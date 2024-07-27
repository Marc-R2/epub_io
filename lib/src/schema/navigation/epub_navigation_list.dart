import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_target.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_list.freezed.dart';

@freezed
class EpubNavigationList with _$EpubNavigationList {
  const factory EpubNavigationList({
    String? id,
    String? classs,
    @Default(<EpubNavigationLabel>[])
    List<EpubNavigationLabel> navigationLabels,
    @Default(<EpubNavigationTarget>[])
    List<EpubNavigationTarget> navigationTargets,
  }) = _EpubNavigationList;
}
