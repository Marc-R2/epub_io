import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_content.freezed.dart';

@freezed
class EpubContent with _$EpubContent {
  const factory EpubContent({
    @Default({}) Map<String, EpubTextContentFile> html,
    @Default({}) Map<String, EpubTextContentFile> css,
    @Default({}) Map<String, EpubByteContentFile> images,
    @Default({}) Map<String, EpubByteContentFile> fonts,
    @Default({}) Map<String, EpubContentFile<dynamic>> allFiles,
  }) = _EpubContent;
}
