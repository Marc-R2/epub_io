import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/navigation/epub_metadata.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';

class EpubNavigationTarget {
  const EpubNavigationTarget({
    this.id,
    this.classs,
    this.value,
    this.playOrder,
    this.navigationLabels = const <EpubNavigationLabel>[],
    this.content,
  });
  final String? id;
  final String? classs;
  final String? value;
  final String? playOrder;
  final List<EpubNavigationLabel> navigationLabels;
  final EpubNavigationContent? content;

  @override
  int get hashCode {
    return id.hashCode ^
        classs.hashCode ^
        value.hashCode ^
        playOrder.hashCode ^
        const DeepCollectionEquality().hash(navigationLabels) ^
        content.hashCode;
  }

  @override
  bool operator ==(covariant EpubNavigationTarget other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.classs == classs &&
        other.value == value &&
        other.playOrder == playOrder &&
        listEquals(other.navigationLabels, navigationLabels) &&
        other.content == content;
  }
}
