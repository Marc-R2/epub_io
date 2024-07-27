import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_content.freezed.dart';

@freezed
class EpubContent with _$EpubContent {
  const factory EpubContent({
    @Default(<String, EpubTextContentFile>{})
    Map<String, EpubTextContentFile> html,
    @Default(<String, EpubTextContentFile>{})
    Map<String, EpubTextContentFile> css,
    @Default(<String, EpubByteContentFile>{})
    Map<String, EpubByteContentFile> images,
    @Default(<String, EpubByteContentFile>{})
    Map<String, EpubByteContentFile> fonts,
    @Default(<String, EpubContentFile>{}) Map<String, EpubContentFile> allFiles,
  }) = _EpubContent;
}
