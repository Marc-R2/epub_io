import 'package:epub_io/src/schema/navigation/epub_navigation_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_map.freezed.dart';

@freezed
class EpubNavigationMap with _$EpubNavigationMap {
  const factory EpubNavigationMap({
    @Default(<EpubNavigationPoint>[]) List<EpubNavigationPoint> points,
  }) = _EpubNavigationMap;
}
