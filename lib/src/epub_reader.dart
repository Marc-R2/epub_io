import 'dart:async';
import 'dart:io';

// TODO(Marc-R2): archive_io is not compatible with web
// provide a version based on platform to support the web
import 'package:archive/archive_io.dart';
import 'package:epub_io/src/entities/epub_book.dart';
import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_chapter.dart';
import 'package:epub_io/src/entities/epub_content.dart';
import 'package:epub_io/src/entities/epub_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:epub_io/src/readers/content_reader.dart';
import 'package:epub_io/src/readers/schema_reader.dart';
import 'package:epub_io/src/ref_entities/epub_book_ref.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_chapter_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';

/// A class that provides the primary interface to read Epub files.
///
/// To open an Epub and load all data at once use the [readBook()] method.
///
/// To open an Epub and load only basic metadata use the [openBook()] method.
/// This is a good option to quickly load text-based metadata, while leaving the
/// heavier lifting of loading images and main content for subsequent operations.
///
/// ## Example
/// ```dart
/// // Read the basic metadata.
/// EpubBookRef epub = await EpubReader.openBook(epubFileBytes);
/// // Extract values of interest.
/// String title = epub.Title;
/// String author = epub.Author;
/// var metadata = epub.Schema.Package.Metadata;
/// String genres = metadata.Subjects.join(', ');
/// ```
class EpubReader {
  static Future<EpubBookRef> openBookStream(File file) async =>
      openBookStreamPath(file.absolute.path);

  static Future<EpubBookRef> openBookStreamPath(String path) async {
    final inputStream = InputFileStream(path);
    final archive = ZipDecoder().decodeBuffer(inputStream);
    return openBookWithArchive(archive);
  }

  /// Loads basics metadata.
  ///
  /// Opens the book asynchronously without reading its main content.
  /// Holds the handle to the EPUB file.
  ///
  /// Argument [bytes] should be the bytes of
  /// the epub file you have loaded with something like the [dart:io] package's
  /// [readAsBytes()].
  ///
  /// This is a fast and convenient way to get the most important information
  /// about the book, notably the [Title], [Author] and [AuthorList].
  /// Additional information is loaded in the [Schema] property such as the
  /// Epub version, Publishers, Languages and more.
  static Future<EpubBookRef> openBook(FutureOr<List<int>> bytes) async {
    List<int> loadedBytes;
    if (bytes is Future) {
      loadedBytes = await bytes;
    } else {
      loadedBytes = bytes;
    }

    final epubArchive = ZipDecoder().decodeBytes(loadedBytes);
    return openBookWithArchive(epubArchive);
  }

  static Future<EpubBookRef> openBookWithArchive(Archive archive) async {
    final schema = await SchemaReader.readSchema(archive);

    final title = schema.package!.metadata!.titles
        .firstWhere((String name) => true, orElse: () => '');

    final bookRef = EpubBookRef(
      epubArchive: archive,
      title: title,
      authors: schema.package!.metadata!.creators,
      schema: schema,
    );

    final content = ContentReader.parseContentMap(bookRef);

    return bookRef.copyWith(content: content);
  }

  static Future<EpubBook> readBookStream(File file) async {
    final epubBookRef = await openBookStream(file);
    return readBookFromRef(epubBookRef);
  }

  static Future<EpubBook> readBookStreamPath(String path) async {
    final epubBookRef = await openBookStreamPath(path);
    return readBookFromRef(epubBookRef);
  }

  /// Opens the book asynchronously and reads all of its content into the memory. Does not hold the handle to the EPUB file.
  static Future<EpubBook> readBook(FutureOr<List<int>> bytes) async {
    final loadedBytes = await bytes;
    final epubBookRef = await openBook(loadedBytes);
    return readBookFromRef(epubBookRef);
  }

  static Future<EpubBook> readBookFromRef(EpubBookRef epubBookRef) async {
    final content = await readContent(epubBookRef.content!);
    final coverImage = await epubBookRef.readCover();
    final chapterRefs = epubBookRef.getChapters();
    final chapters = await readChapters(chapterRefs);

    return epubBookRef.asEpubBook(
      content: content,
      coverImage: coverImage,
      chapters: chapters,
    );
  }

  static Future<EpubContent> readContent(EpubContentRef contentRef) async {
    final html = await readTextContentFiles(contentRef.html);
    final css = await readTextContentFiles(contentRef.css);
    final images = await readByteContentFiles(contentRef.images);
    final fonts = await readByteContentFiles(contentRef.fonts);
    final allFiles = <String, EpubContentFile<dynamic>>{};

    html.forEach((key, value) => allFiles[key] = value);
    css.forEach((key, value) => allFiles[key] = value);
    images.forEach((key, value) => allFiles[key] = value);
    fonts.forEach((key, value) => allFiles[key] = value);

    await Future.forEach(
      contentRef.allFiles.keys.where((key) => !allFiles.containsKey(key)),
      (key) async =>
          allFiles[key] = await readContentFile(contentRef.allFiles[key]!),
    );

    return EpubContent(
      html: html,
      css: css,
      images: images,
      fonts: fonts,
      allFiles: allFiles,
    );
  }

  static Future<EpubContentFile<dynamic>> readContentFile(
    EpubContentFileRef<dynamic> contentFileRef,
  ) async {
    final content = await contentFileRef.readContent();

    if (content is String) {
      return EpubTextContentFile(
        fileName: contentFileRef.fileName,
        contentType: contentFileRef.contentType,
        contentMimeType: contentFileRef.contentMimeType,
        content: content,
      );
    } else if (content is List<int>) {
      return EpubByteContentFile(
        fileName: contentFileRef.fileName,
        contentType: contentFileRef.contentType,
        contentMimeType: contentFileRef.contentMimeType,
        content: content,
      );
    } else {
      throw Exception('Unknown content type');
    }
  }

  static Future<Map<String, EpubTextContentFile>> readTextContentFiles(
    Map<String, EpubTextContentFileRef> textContentFileRefs,
  ) async {
    final result = <String, EpubTextContentFile>{};

    await Future.forEach(textContentFileRefs.keys, (String key) async {
      final value = textContentFileRefs[key]!;
      final content = await value.readContent();
      final textContentFile = EpubTextContentFile(
        fileName: value.fileName,
        contentType: value.contentType,
        contentMimeType: value.contentMimeType,
        content: content,
      );
      result[key] = textContentFile;
    });
    return result;
  }

  static Future<Map<String, EpubByteContentFile>> readByteContentFiles(
    Map<String, EpubByteContentFileRef> byteContentFileRefs,
  ) async {
    final result = <String, EpubByteContentFile>{};
    await Future.forEach(byteContentFileRefs.keys, (String key) async {
      result[key] = await readByteContentFile(byteContentFileRefs[key]!);
    });
    return result;
  }

  static Future<EpubByteContentFile> readByteContentFile(
    EpubByteContentFileRef contentFileRef,
  ) async {
    final content = await contentFileRef.readContent();
    final result = EpubByteContentFile(
      fileName: contentFileRef.fileName,
      contentType: contentFileRef.contentType,
      contentMimeType: contentFileRef.contentMimeType,
      content: content,
    );

    return result;
  }

  static Future<List<EpubChapter<dynamic>>> readChapters(
    List<EpubChapterRef> chapterRefs,
  ) async {
    final res = chapterRefs.map((chapterRef) => chapterRef.asChapter());
    return Future.wait<EpubChapter<dynamic>>(res);
  }
}
