import 'dart:convert' as convert;
import 'dart:convert';

import 'package:charset/charset.dart';
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

  @override
  Future<String> readContent() async {
    final contentStream = getContentStream();
    try {
      return convert.utf8.decode(contentStream);
    } catch (e) {
      final sb = StringBuffer('Error reading $fileName as $contentMimeType');
      if (e is FormatException) {
        // Try to detect the encoding
        final encoding = detectEncoding(contentStream);
        if (encoding != null) return encoding.decode(contentStream);
        sb.write(' and failed to detect encoding');
      }
      sb.write(': $e');
      throw Exception(sb.toString());
    }
  }

  static Encoding? detectEncoding(List<int> bytes) {
    final charset = Charset.detect(
      bytes,
      orders: [ascii, eucJp, latin1, utf8, eucKr, shiftJis, gbk, utf16, utf32],
    );
    if (charset == null) return null;
    return convert.Encoding.getByName(charset.name);
  }
}
