import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/navigation/epub_metadata.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_page_target_type.dart';

class EpubNavigationPageTarget {
  const EpubNavigationPageTarget({
    this.id,
    this.value,
    this.type,
    this.classs,
    this.playOrder,
    this.navigationLabels = const <EpubNavigationLabel>[],
    this.content,
  });
  final String? id;
  final String? value;
  final EpubNavigationPageTargetType? type;
  final String? classs;
  final String? playOrder;
  final List<EpubNavigationLabel> navigationLabels;
  final EpubNavigationContent? content;

  @override
  int get hashCode {
    return id.hashCode ^
        value.hashCode ^
        type.hashCode ^
        classs.hashCode ^
        playOrder.hashCode ^
        const DeepCollectionEquality().hash(navigationLabels) ^
        content.hashCode;
  }

  @override
  bool operator ==(covariant EpubNavigationPageTarget other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.value == value &&
        other.type == type &&
        other.classs == classs &&
        other.playOrder == playOrder &&
        listEquals(other.navigationLabels, navigationLabels) &&
        other.content == content;
  }
}
