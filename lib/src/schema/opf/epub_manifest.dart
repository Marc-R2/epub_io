import 'package:collection/collection.dart';
import 'package:epub_io/src/schema/opf/epub_manifest_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_manifest.freezed.dart';

@freezed
class EpubManifest with _$EpubManifest {
  const factory EpubManifest({
    @Default(<EpubManifestItem>[]) List<EpubManifestItem> items,
  }) = _EpubManifest;

  const EpubManifest._();

  EpubManifestItem? getItemByPropertyOrNull(String property) => items
      .firstWhereOrNull((item) => item.properties?.contains(property) ?? false);

  EpubManifestItem getItemByProperty(String property) {
    final item = getItemByPropertyOrNull(property);
    if (item != null) return item;
    throw ArgumentError('Item not found: $property');
  }
}
