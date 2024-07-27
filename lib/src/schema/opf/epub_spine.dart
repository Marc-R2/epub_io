import 'package:collection/collection.dart';

import 'package:epub_io/src/schema/opf/epub_spine_item_ref.dart';

class EpubSpine {
  const EpubSpine({
    required this.ltr,
    this.tableOfContents,
    this.items = const <EpubSpineItemRef>[],
  });
  final String? tableOfContents;
  final List<EpubSpineItemRef> items;
  final bool ltr;

  @override
  int get hashCode =>
      tableOfContents.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      ltr.hashCode;

  @override
  bool operator ==(covariant EpubSpine other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.tableOfContents == tableOfContents &&
        listEquals(other.items, items) &&
        other.ltr == ltr;
  }
}
