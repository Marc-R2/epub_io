import 'dart:async';
import 'dart:typed_data';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';
import 'package:image/image.dart' as images;

class BookCoverReader {
  static List<EpubMetadataMeta> metaItems(EpubBookRef bookRef) =>
      bookRef.schema?.package?.metadata?.metaItems ?? [];

  static EpubMetadataMeta coverMetaItem(EpubBookRef bookRef) {
    final cover = metaItems(bookRef).firstWhereOrNull(
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

  static EpubManifestItem coverManifestItem(
    EpubBookRef bookRef,
    EpubMetadataMeta cover,
  ) {
    final manifest = bookRef.schema?.package?.manifest?.items.firstWhereOrNull(
      (manifestItem) =>
          manifestItem.id?.toLowerCase() == cover.content?.toLowerCase(),
    );
    if (manifest != null) return manifest;
    throw Exception(
      'Incorrect EPUB manifest: item ID = "${cover.content}" is missing.',
    );
  }

  static EpubByteContentFileRef coverImageContentFileRef(
    EpubBookRef bookRef,
    EpubManifestItem manifest,
  ) {
    if (bookRef.content!.images.containsKey(manifest.href)) {
      return bookRef.content!.images[manifest.href]!;
    }
    throw Exception(
      'Incorrect EPUB manifest: item href = "${manifest.href}" is missing.',
    );
  }

  static Future<List<int>> readBookCoverAsBytes(EpubBookRef bookRef) async {
    final cover = coverMetaItem(bookRef);
    final manifest = coverManifestItem(bookRef, cover);
    final coverImage = coverImageContentFileRef(bookRef, manifest);
    return coverImage.readContent();
  }

  static Future<images.Image?> readBookCoverImage(EpubBookRef bookRef) async {
    try {
      final coverImageContent = await readBookCoverAsBytes(bookRef);
      return images.decodeImage(Uint8List.fromList(coverImageContent));
    } catch (e) {
      print('Error reading book cover: $e');
      return null;
    }
  }
}
