import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_chapter.freezed.dart';

@freezed
class EpubChapter with _$EpubChapter {
  const factory EpubChapter({
    String? title,
    String? contentFileName,
    String? anchor,
    String? htmlContent,
    @Default(<EpubChapter>[]) List<EpubChapter> subChapters,
  }) = _EpubChapter;
}
