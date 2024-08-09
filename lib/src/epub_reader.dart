import 'dart:async';
import 'dart:io';

// TODO(Marc-R2): archive_io is not compatible with web
// provide a version based on platform to support the web
import 'package:archive/archive_io.dart';
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/book_cover_reader.dart';
import 'package:epub_io/src/readers/content_reader.dart';
import 'package:epub_io/src/readers/content_ref_reader.dart';
import 'package:epub_io/src/readers/navigation_reader.dart';
import 'package:epub_io/src/readers/schema_reader.dart';

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
class EpubReader
    with
        EpubArchiveReader,
        SchemaReader,
        ContentRefReader,
        ContentReader,
        BookCoverReader,
        NavigationReader {
  EpubReader(Archive archive) : epubArchive = EpubArchive(archive);

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

  final EpubArchive epubArchive;

  Future<EpubMetadata> get metadata async => (await schema).package!.metadata!;

  Future<String?> get title async => (await metadata)
      .titles
      .firstWhere((String name) => true, orElse: () => '');

  Future<List<EpubMetadataCreator>> get authors async =>
      (await metadata).creators;

  Future<String> get authorString async =>
      (await authors).map((e) => e.creator).join(', ');

  Future<EpubBookRef> asRef() async => EpubBookRef(
        epubArchive: epubArchive,
        title: await title,
        authors: await authors,
        schema: await schema,
        content: await contentRef,
      );

  Future<EpubBook> readBookFromRef() async {
    final epubBookRef = await asRef();

    final chapterRefs = epubBookRef.getChapters();
    final chapters = await readChapters(chapterRefs);

    return epubBookRef.asEpubBook(
      content: await content,
      coverImage: await coverImage,
      chapters: chapters,
    );
  }

  static Future<List<EpubChapter<dynamic>>> readChapters(
    List<EpubChapterRef> chapterRefs,
  ) async {
    final res = chapterRefs.map((chapterRef) => chapterRef.asChapter());
    return Future.wait<EpubChapter<dynamic>>(res);
  }
}
