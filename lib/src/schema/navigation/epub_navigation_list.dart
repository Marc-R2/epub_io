import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_target.dart';

class EpubNavigationList {
  const EpubNavigationList({
    this.id,
    this.classs,
    this.navigationLabels = const <EpubNavigationLabel>[],
    this.navigationTargets = const <EpubNavigationTarget>[],
  });
  final String? id;
  final String? classs;
  final List<EpubNavigationLabel> navigationLabels;
  final List<EpubNavigationTarget> navigationTargets;

  @override
  int get hashCode {
    return id.hashCode ^
        classs.hashCode ^
        const DeepCollectionEquality().hash(navigationLabels) ^
        const DeepCollectionEquality().hash(navigationTargets);
  }

  @override
  bool operator ==(covariant EpubNavigationList other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.classs == classs &&
        listEquals(other.navigationLabels, navigationLabels) &&
        listEquals(other.navigationTargets, navigationTargets);
  }
}
