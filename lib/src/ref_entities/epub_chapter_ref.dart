import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_chapter_ref.freezed.dart';

@freezed
class EpubChapterRef with _$EpubChapterRef {
  const factory EpubChapterRef({
    EpubTextContentFileRef? epubTextContentFileRef,
    String? title,
    String? contentFileName,
    String? anchor,
    @Default(<EpubChapterRef>[]) List<EpubChapterRef> subChapters,
  }) = _EpubChapterRef;

  const EpubChapterRef._();

  Future<String> readHtmlContent() =>
      epubTextContentFileRef!.readContentAsText();
}
