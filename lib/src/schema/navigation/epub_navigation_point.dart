import 'package:epub_io/src/schema/navigation/epub_metadata.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_point.freezed.dart';

@freezed
class EpubNavigationPoint with _$EpubNavigationPoint {
  const factory EpubNavigationPoint({
    required List<EpubNavigationLabel> navigationLabels,
    required EpubNavigationContent content,
    String? id,
    String? classs,
    String? playOrder,
    @Default([]) List<EpubNavigationPoint> childNavigationPoints,
  }) = _EpubNavigationPoint;
}
