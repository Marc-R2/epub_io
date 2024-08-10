import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_content_ref.freezed.dart';

@freezed
class EpubContentRef with _$EpubContentRef {
  const factory EpubContentRef({
    required Map<String, EpubTextContentFileRef> html,
    required Map<String, EpubTextContentFileRef> css,
    required Map<String, EpubByteContentFileRef> images,
    required Map<String, EpubByteContentFileRef> fonts,
    required Map<String, EpubContentFileRef<dynamic>> allFiles,
  }) = _EpubContentRef;

  const EpubContentRef._();
}
