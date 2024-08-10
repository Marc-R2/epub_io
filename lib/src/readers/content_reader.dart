import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/content_ref_reader.dart';
import 'package:epub_io/src/readers/lazy_object.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';

/// The [ContentReader] mixin extends [ContentRefReader] to provide methods
/// for reading and returning the actual content files from an EPUB archive.
mixin ContentReader implements ContentRefReader {
  /// Lazily initialized [EpubContent] object that represents the
  /// content of the EPUB file.
  late final _epubContent = LazyObject(readContent);

  /// Asynchronously retrieves the parsed content ([EpubContent]).
  Future<EpubContent> get content async => _epubContent.value;

  /// Reads and parses the content files from the EPUB archive.
  ///
  /// This method reads the content files referenced by [EpubContentRef]
  /// and organizes them into categories like HTML, CSS, images, and fonts.
  ///
  /// Returns a future that resolves to an [EpubContent] object.
  Future<EpubContent> readContent() async {
    final contentRef = await this.contentRef;

    final html = await readContentFiles(contentRef.html);
    final css = await readContentFiles(contentRef.css);
    final images = await readContentFiles(contentRef.images);
    final fonts = await readContentFiles(contentRef.fonts);
    final allFiles = <String, EpubContentFile<dynamic>>{};

    // Aggregate all content files into the allFiles map.
    html.forEach((key, value) => allFiles[key] = value);
    css.forEach((key, value) => allFiles[key] = value);
    images.forEach((key, value) => allFiles[key] = value);
    fonts.forEach((key, value) => allFiles[key] = value);

    // Read and add any additional files not included in the main categories.
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

  /// Reads a set of content files and returns them as a map
  /// of file paths to content objects.
  ///
  /// - **[T]**: The type of content file to read.
  /// - **[fileRefs]**: A map of file paths to [EpubContentFileRef] objects.
  ///
  /// Returns a future that resolves to a map
  /// of file paths to [EpubContentFile] objects.
  Future<Map<String, EpubContentFile<T>>> readContentFiles<T>(
    Map<String, EpubContentFileRef<T>> fileRefs,
  ) async {
    final res = <String, EpubContentFile<T>>{};
    await Future.forEach(
      fileRefs.entries,
      (entry) async => res[entry.key] = await entry.value.read(),
    );
    return res;
  }
}
