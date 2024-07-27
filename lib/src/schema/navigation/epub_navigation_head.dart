import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/navigation/epub_navigation_head_meta.dart';

class EpubNavigationHead {
  const EpubNavigationHead({
    this.metadata = const <EpubNavigationHeadMeta>[],
  });
  final List<EpubNavigationHeadMeta> metadata;

  @override
  int get hashCode => const DeepCollectionEquality().hash(metadata);

  @override
  bool operator ==(covariant EpubNavigationHead other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.metadata, metadata);
  }
}
