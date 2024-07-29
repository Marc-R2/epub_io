import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_chapter.freezed.dart';

abstract class EpubChapter<T> {
  String? get title;

  String? get contentFileName;

  String? get anchor;

  T? get content;

  List<EpubChapter<dynamic>> get subChapters;
}

@freezed
class EpubChapterText with _$EpubChapterText implements EpubChapter<String> {
  const factory EpubChapterText({
    String? title,
    String? contentFileName,
    String? anchor,
    String? content,
    @Default([]) List<EpubChapter<dynamic>> subChapters,
  }) = _EpubChapterText;
}

@freezed
class EpubChapterBytes
    with _$EpubChapterBytes
    implements EpubChapter<List<int>> {
  const factory EpubChapterBytes({
    String? title,
    String? contentFileName,
    String? anchor,
    List<int>? content,
    @Default([]) List<EpubChapter<dynamic>> subChapters,
  }) = _EpubChapterBytes;
}
