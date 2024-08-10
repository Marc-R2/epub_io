import 'dart:async';
import 'dart:typed_data';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/content_ref_reader.dart';
import 'package:epub_io/src/readers/lazy_object.dart';
import 'package:epub_io/src/readers/schema_reader.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';
import 'package:image/image.dart' as images;

/// The [BookCoverReader] mixin provides functionality
/// to read the cover image from an EPUB book.
/// It extends the [SchemaReader] and [ContentRefReader] interfaces.
mixin BookCoverReader implements SchemaReader, ContentRefReader {
  /// A lazily-initialized [_coverImage] object that holds
  /// the result of the [readBookCoverImage] method.
  late final _coverImage = LazyObject(readBookCoverImage);

  /// An asynchronous getter for the cover image as an [images.Image] object.
  ///
  /// Returns the decoded cover image, or `null` if the image cannot be read.
  Future<images.Image?> get coverImage async => _coverImage.value;

  /// Retrieves the metadata items from the [EpubSchema].
  ///
  /// - **[schema]**: The [EpubSchema] object representing the EPUB's schema.
  ///
  /// Returns a list of [EpubMetadataMeta] objects from the metadata section.
  static List<EpubMetadataMeta> metaItems(EpubSchema schema) =>
      schema.package.metadata?.metaItems ?? [];

  /// Finds and returns the metadata item representing the cover image.
  ///
  /// - **[schema]**: The [EpubSchema] object representing the EPUB's schema.
  ///
  /// Throws an exception if the cover item is missing or its content is empty.
  EpubMetadataMeta coverMetaItem(EpubSchema schema) {
    final cover = metaItems(schema).firstWhereOrNull(
      (metaItem) => metaItem.name?.toLowerCase() == 'cover',
    );
    if (cover == null) throw Exception('cover item is missing.');
    if (cover.content == null || cover.content!.isEmpty) {
      throw Exception(
        'Incorrect EPUB metadata: cover item content is missing.',
      );
    }
    return cover;
  }

  /// Finds and returns the manifest item corresponding to the cover image.
  ///
  /// - **[schema]**: The [EpubSchema] object representing the EPUB's schema.
  /// - **[cover]**: The [EpubMetadataMeta] object representing the cover.
  ///
  /// Throws an exception if the manifest item for the cover is missing.
  EpubManifestItem coverManifestItem(
    EpubSchema schema,
    EpubMetadataMeta cover,
  ) {
    final manifest = schema.package.manifest?.items.firstWhereOrNull(
      (manifestItem) =>
          manifestItem.id?.toLowerCase() == cover.content?.toLowerCase(),
    );
    if (manifest != null) return manifest;
    throw Exception(
      'Incorrect EPUB manifest: item ID = "${cover.content}" is missing.',
    );
  }

  /// Retrieves the file reference for the cover image from the manifest item.
  ///
  /// - **[manifestItem]**: The [EpubManifestItem] object
  ///   representing the manifest item for the cover.
  ///
  /// Returns a [Future] that completes with an [EpubByteContentFileRef] object.
  Future<EpubByteContentFileRef> coverFileRef(EpubManifestItem manifestItem) =>
      getFileRef(manifestItem);

  /// Reads the cover image as a list of bytes.
  ///
  /// This method retrieves the EPUB schema, finds the cover metadata and
  /// manifest items, and then reads the content of the cover image as bytes.
  ///
  /// Returns a [Future] that completes with a list of bytes
  /// representing the cover image.
  Future<List<int>> readBookCoverAsBytes() async {
    final schema = await this.schema;
    final cover = coverMetaItem(schema);
    final manifestItem = coverManifestItem(schema, cover);
    final coverImage = await coverFileRef(manifestItem);
    return coverImage.readContent();
  }

  /// Reads and decodes the cover image as an [images.Image] object.
  ///
  /// This method attempts to read the cover image as bytes and then decode it.
  /// If an error occurs, it prints an error message and returns `null`.
  ///
  /// Returns a [Future] that completes with the decoded [images.Image] object,
  /// or `null` if an error occurs.
  Future<images.Image?> readBookCoverImage() async {
    try {
      final coverImageContent = await readBookCoverAsBytes();
      return images.decodeImage(Uint8List.fromList(coverImageContent));
    } catch (e) {
      print('Error reading book cover: $e');
      return null;
    }
  }
}
