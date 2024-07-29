import 'dart:convert' as convert;

import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_text_content_file_ref.freezed.dart';

@freezed
class EpubTextContentFileRef
    with _$EpubTextContentFileRef, EpubContentFileRef<String> {
  const factory EpubTextContentFileRef({
    required EpubBookRef epubBookRef,
    String? fileName,
    String? contentMimeType,
    EpubContentType? contentType,
  }) = _EpubTextContentFileRef;

  const EpubTextContentFileRef._();

  Future<String> readContent() async {
    final contentStream = getContentStream();
    return convert.utf8.decode(contentStream);
  }
}
