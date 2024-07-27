import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/opf/epub_manifest_item.dart';

class EpubManifest {
  const EpubManifest({
    this.items = const <EpubManifestItem>[],
  });
  final List<EpubManifestItem> items;

  @override
  int get hashCode => const DeepCollectionEquality().hash(items);

  @override
  bool operator ==(covariant EpubManifest other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.items, items);
  }
}
