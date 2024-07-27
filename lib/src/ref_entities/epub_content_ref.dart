import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_content_ref.freezed.dart';

@freezed
class EpubContentRef with _$EpubContentRef {
  const factory EpubContentRef({
    @Default(<String, EpubTextContentFileRef>{})
    Map<String, EpubTextContentFileRef> html,
    @Default(<String, EpubTextContentFileRef>{})
    Map<String, EpubTextContentFileRef> css,
    @Default(<String, EpubByteContentFileRef>{})
    Map<String, EpubByteContentFileRef> images,
    @Default(<String, EpubByteContentFileRef>{})
    Map<String, EpubByteContentFileRef> fonts,
    @Default(<String, EpubContentFileRef>{})
    Map<String, EpubContentFileRef> allFiles,
  }) = _EpubContentRef;

  const EpubContentRef._();
}
