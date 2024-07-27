import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_doc_title.freezed.dart';

@freezed
class EpubNavigationDocTitle with _$EpubNavigationDocTitle {
  const factory EpubNavigationDocTitle({
    @Default(<String>[]) List<String> titles,
  }) = _EpubNavigationDocTitle;
}
