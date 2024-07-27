import 'package:epub_io/epub_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_text_content_file.freezed.dart';

@freezed
class EpubTextContentFile
    with _$EpubTextContentFile
    implements EpubContentFile {
  const factory EpubTextContentFile({
    String? fileName,
    String? contentMimeType,
    EpubContentType? contentType,
    String? content,
  }) = _EpubTextContentFile;
}
