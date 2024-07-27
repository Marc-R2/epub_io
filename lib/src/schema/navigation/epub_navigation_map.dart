import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/navigation/epub_navigation_point.dart';

class EpubNavigationMap {
  const EpubNavigationMap({
    this.points = const <EpubNavigationPoint>[],
  });
  final List<EpubNavigationPoint> points;

  @override
  int get hashCode => const DeepCollectionEquality().hash(points);

  @override
  bool operator ==(covariant EpubNavigationMap other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.points, points);
  }
}
