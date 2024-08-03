import 'dart:async';
import 'dart:io';

// TODO(Marc-R2): archive_io is not compatible with web
// provide a version based on platform to support the web
import 'package:archive/archive_io.dart';
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/content_reader.dart';
import 'package:epub_io/src/readers/schema_reader.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';

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
  EpubReader(Archive archive) : archive = EpubArchive(archive);

  factory EpubReader.fromBytes(List<int> bytes) =>
      EpubReader(ZipDecoder().decodeBytes(bytes));

  factory EpubReader.fromPath(String path, {bool stream = true}) {
    if (!stream) return EpubReader.fromFile(File(path), stream: false);
    return EpubReader(ZipDecoder().decodeBuffer(InputFileStream(path)));
  }

  factory EpubReader.fromFile(File file, {bool stream = true}) {
    if (!stream) return EpubReader.fromBytes(file.readAsBytesSync());
    return EpubReader.fromPath(file.absolute.path, stream: stream);
  }

  final EpubArchive archive;

  Future<EpubSchema>? _schema;

  Future<EpubSchema> get schema async =>
      _schema ??= SchemaReader.readSchema(archive);

  Future<EpubMetadata> get metadata async => (await schema).package!.metadata!;

  Future<String?> get title async => (await metadata)
      .titles
      .firstWhere((String name) => true, orElse: () => '');

  Future<List<EpubMetadataCreator>> get authors async =>
      (await metadata).creators;

  Future<String> get authorString async =>
      (await authors).map((e) => e.creator).join(', ');

  Future<EpubBookRef> asRef() async {
    final ref = EpubBookRef(
      epubArchive: archive,
      title: await title,
      authors: await authors,
      schema: await schema,
    );

    final contentRef = ContentReader.parseContentMap(ref);
    return ref.copyWith(content: contentRef);
  }

  Future<EpubBook> readBookFromRef() async {
    final epubBookRef = await asRef();

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
    final html = await readContentFiles(contentRef.html);
    final css = await readContentFiles(contentRef.css);
    final images = await readContentFiles(contentRef.images);
    final fonts = await readContentFiles(contentRef.fonts);
    final allFiles = <String, EpubContentFile<dynamic>>{};

    html.forEach((key, value) => allFiles[key] = value);
    css.forEach((key, value) => allFiles[key] = value);
    images.forEach((key, value) => allFiles[key] = value);
    fonts.forEach((key, value) => allFiles[key] = value);

    await Future.forEach(
      contentRef.allFiles.keys.where((key) => !allFiles.containsKey(key)),
      (key) async => allFiles[key] = await contentRef.allFiles[key]!.read(),
    );

    return EpubContent(
      // TODO(Marc-R2): find a solution to avoid TypeCasts
      html: html.cast<String, EpubTextContentFile>(),
      css: css.cast<String, EpubTextContentFile>(),
      images: images.cast<String, EpubByteContentFile>(),
      fonts: fonts.cast<String, EpubByteContentFile>(),
      allFiles: allFiles,
    );
  }

  static Future<Map<String, EpubContentFile<T>>> readContentFiles<T>(
    Map<String, EpubContentFileRef<T>> fileRefs,
  ) async {
    final res = <String, EpubContentFile<T>>{};
    await Future.forEach(
      fileRefs.entries,
      (entry) async => res[entry.key] = await entry.value.read(),
    );
    return res;
  }

  static Future<List<EpubChapter<dynamic>>> readChapters(
    List<EpubChapterRef> chapterRefs,
  ) async {
    final res = chapterRefs.map((chapterRef) => chapterRef.asChapter());
    return Future.wait<EpubChapter<dynamic>>(res);
  }
}
