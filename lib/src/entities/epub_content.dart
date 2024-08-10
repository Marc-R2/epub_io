import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_content.freezed.dart';

@freezed
class EpubContent with _$EpubContent {
  const factory EpubContent({
    required Map<String, EpubTextContentFile> html,
    required Map<String, EpubTextContentFile> css,
    required Map<String, EpubByteContentFile> images,
    required Map<String, EpubByteContentFile> fonts,
    required Map<String, EpubContentFile<dynamic>> allFiles,
  }) = _EpubContent;
}
