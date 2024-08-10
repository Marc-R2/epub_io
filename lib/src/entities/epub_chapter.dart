import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_chapter.freezed.dart';

abstract class EpubChapter<T> {
  String get title;

  String get contentFileName;

  String? get anchor;

  T get content;

  List<EpubChapter<dynamic>> get subChapters;
}

@freezed
class EpubChapterText with _$EpubChapterText implements EpubChapter<String> {
  const factory EpubChapterText({
    required String contentFileName,
    required String content,
    required List<EpubChapter<dynamic>> subChapters,
    required String title,
    String? anchor,
  }) = _EpubChapterText;
}

@freezed
class EpubChapterBytes
    with _$EpubChapterBytes
    implements EpubChapter<List<int>> {
  const factory EpubChapterBytes({
    required String contentFileName,
    required List<int> content,
    required List<EpubChapter<dynamic>> subChapters,
    required String title,
    String? anchor,
  }) = _EpubChapterBytes;
}
