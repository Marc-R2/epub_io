import 'package:epub_io/epub_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_text_content_file.freezed.dart';

@freezed
class EpubTextContentFile
    with _$EpubTextContentFile
    implements EpubContentFile<String> {
  const factory EpubTextContentFile({
    required String fileName,
    required String contentMimeType,
    required EpubContentType contentType,
    required String content,
  }) = _EpubTextContentFile;
}
