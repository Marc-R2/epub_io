import 'package:epub_io/src/schema/navigation/epub_navigation_page_target.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_page_list.freezed.dart';

@freezed
class EpubNavigationPageList with _$EpubNavigationPageList {
  const factory EpubNavigationPageList({
    @Default(<EpubNavigationPageTarget>[])
    List<EpubNavigationPageTarget> targets,
  }) = _EpubNavigationPageList;
}
