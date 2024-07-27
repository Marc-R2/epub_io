import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/navigation/epub_navigation_page_target.dart';

class EpubNavigationPageList {
  const EpubNavigationPageList({
    this.targets = const <EpubNavigationPageTarget>[],
  });
  final List<EpubNavigationPageTarget> targets;

  @override
  int get hashCode => const DeepCollectionEquality().hash(targets);

  @override
  bool operator ==(covariant EpubNavigationPageList other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.targets, targets);
  }
}
