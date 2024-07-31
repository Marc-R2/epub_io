import 'package:epub_io/epub_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_byte_content_file.freezed.dart';

@freezed
class EpubByteContentFile
    with _$EpubByteContentFile
    implements EpubContentFile {
  const factory EpubByteContentFile({
    String? fileName,
    String? contentMimeType,
    EpubContentType? contentType,
    List<int>? content,
  }) = _EpubByteContentFile;
}
