import 'dart:async';
import 'dart:typed_data';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/content_reader.dart';
import 'package:epub_io/src/readers/schema_reader.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';
import 'package:image/image.dart' as images;

mixin BookCoverReader implements SchemaReader, ContentRefReader {
  static List<EpubMetadataMeta> metaItems(EpubSchema schema) =>
      schema.package?.metadata?.metaItems ?? [];

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

  EpubManifestItem coverManifestItem(
      EpubSchema schema, EpubMetadataMeta cover) {
    final manifest = schema.package?.manifest?.items.firstWhereOrNull(
      (manifestItem) =>
          manifestItem.id?.toLowerCase() == cover.content?.toLowerCase(),
    );
    if (manifest != null) return manifest;
    throw Exception(
      'Incorrect EPUB manifest: item ID = "${cover.content}" is missing.',
    );
  }

  Future<EpubByteContentFileRef> coverFileRef(EpubManifestItem manifestItem) =>
      getFileRef(manifestItem);

  Future<List<int>> readBookCoverAsBytes() async {
    final schema = await this.schema;
    final cover = coverMetaItem(schema);
    final manifestItem = coverManifestItem(schema, cover);
    final coverImage = await coverFileRef(manifestItem);
    return coverImage.readContent();
  }

  Future<images.Image?> readBookCoverImage() async {
    try {
      final coverImageContent = await readBookCoverAsBytes();
      return images.decodeImage(Uint8List.fromList(coverImageContent));
    } catch (e) {
      print('Error reading book cover: $e');
      return null;
    }
  }

  images.Image? _coverImage;

  Future<images.Image?> get coverImage async =>
      _coverImage ??= await readBookCoverImage();
}
