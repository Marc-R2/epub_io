import 'package:epub_io/src/schema/navigation/epub_metadata.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_point.freezed.dart';

@freezed
class EpubNavigationPoint with _$EpubNavigationPoint {
  const factory EpubNavigationPoint({
    String? id,
    String? classs,
    String? playOrder,
    @Default([]) List<EpubNavigationLabel> navigationLabels,
    EpubNavigationContent? content,
    @Default([]) List<EpubNavigationPoint> childNavigationPoints,
  }) = _EpubNavigationPoint;
}
