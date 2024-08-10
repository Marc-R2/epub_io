import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/lazy_object.dart';
import 'package:epub_io/src/readers/schema_reader.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';

/// The [ContentRefReader] mixin provides methods for accessing and
/// parsing content files referenced in an EPUB archive.
mixin ContentRefReader implements EpubArchiveReader, SchemaReader {
  /// Lazily initialized [EpubContentRef] object that represents the
  /// content map of the EPUB file.
  late final _epubContentRef = LazyObject(parseContentMap);

  /// Asynchronously retrieves the parsed
  /// content reference map ([EpubContentRef]).
  Future<EpubContentRef> get contentRef async => _epubContentRef.value;

  /// Asynchronously retrieves the reference to a specific content file.
  ///
  /// - **[T]**: The type of content file reference to retrieve.
  /// - **[item]**: The [EpubManifestItem] representing the content file.
  ///
  /// Returns a future that resolves to the content file reference of type [T].
  Future<T> getFileRef<T>(EpubManifestItem item) async =>
      getFileRefSync(item, await schema);

  /// Synchronously retrieves the reference to a specific content file.
  ///
  /// - **[T]**: The type of content file reference to retrieve.
  /// - **[item]**: The [EpubManifestItem] representing the content file.
  /// - **[schema]**: The [EpubSchema] containing metadata about the file.
  ///
  /// Returns the content file reference of type [T].
  T getFileRefSync<T>(EpubManifestItem item, EpubSchema schema) {
    final fileName = item.href ?? '';
    final contentMimeType = item.mediaType!;
    final contentType = EpubContentType.fromMimeType(contentMimeType);

    final constructor = switch (contentType.refContentType.refType) {
      EpubfileRefType.text => EpubTextContentFileRef.new,
      EpubfileRefType.byte => EpubByteContentFileRef.new,
    };
    return constructor(
      epubArchive: epubArchive,
      schema: schema,
      fileName: fileName,
      contentMimeType: contentMimeType,
      contentType: contentType,
    ) as T;
  }

  /// Parses the content map from the EPUB manifest
  /// and returns it as an [EpubContentRef].
  ///
  /// This method organizes the content files into categories
  /// like HTML, CSS, images, and fonts.
  ///
  /// Returns a future that resolves to an [EpubContentRef] object.
  Future<EpubContentRef> parseContentMap() async {
    final html = <String, EpubTextContentFileRef>{};
    final css = <String, EpubTextContentFileRef>{};
    final images = <String, EpubByteContentFileRef>{};
    final fonts = <String, EpubByteContentFileRef>{};
    final allFiles = <String, EpubContentFileRef<dynamic>>{};

    final schema = await this.schema;

    /// Processes each manifest item and categorizes the content files.
    void processItem(EpubManifestItem item) {
      final fileName = item.href ?? '';
      final contentMimeType = item.mediaType!;
      final contentType = EpubContentType.fromMimeType(contentMimeType);

      switch (contentType.refContentType) {
        case EpubFileContentType.xhtml:
          html[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.css:
          css[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.image:
          images[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.font:
          fonts[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.other:
        // pass
      }
      allFiles[fileName] = getFileRefSync(item, schema);
    }

    for (final manifestItem in schema.package.manifest!.items) {
      processItem(manifestItem);
    }

    return EpubContentRef(
      html: html,
      css: css,
      images: images,
      fonts: fonts,
      allFiles: allFiles,
    );
  }
}
