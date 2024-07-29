import 'dart:async';

import 'package:archive/archive.dart';
import 'package:collection/collection.dart';
import 'package:epub_io/src/entities/epub_content_type.dart';
import 'package:epub_io/src/ref_entities/epub_book_ref.dart';
import 'package:epub_io/src/utils/zip_path_utils.dart';

mixin EpubContentFileRef<T> {
  EpubBookRef get epubBookRef;

  String? get fileName;

  EpubContentType? get contentType;

  String? get contentMimeType;

  ArchiveFile getContentFileEntry() {
    final contentFilePath = ZipPathUtils.combine(
      epubBookRef.schema!.epubContainer.contentDirectoryPath,
      fileName,
    );
    final contentFileEntry = epubBookRef.epubArchive.files
        .firstWhereOrNull((ArchiveFile x) => x.name == contentFilePath);
    if (contentFileEntry == null) {
      throw Exception(
        'EPUB parsing error: file $contentFilePath not found in archive.',
      );
    }
    return contentFileEntry;
  }

  List<int> getContentStream() {
    return openContentStream(getContentFileEntry());
  }

  List<int> openContentStream(ArchiveFile contentFileEntry) {
    final contentStream = <int>[];
    if (contentFileEntry.content == null) {
      throw Exception(
        'Incorrect EPUB file: content file "$fileName" specified in manifest is not found.',
      );
    }
    // TODO(Marc-R2): unknown casting - check if it's correct
    contentStream.addAll(contentFileEntry.content as List<int>);
    return contentStream;
  }

  Future<T> readContent();
}
