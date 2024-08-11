import 'package:collection/collection.dart';
import 'package:epub_io/src/epub_read_write.dart';
import 'package:epub_io/src/schema/opf/epub_manifest_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_manifest.freezed.dart';

@freezed
class EpubManifest with _$EpubManifest, EpubReadWrite<EpubManifest> {
  const factory EpubManifest({
    @Default(<EpubManifestItem>[]) List<EpubManifestItem> items,
  }) = _EpubManifest;

  const EpubManifest._();

  factory EpubManifest.readXml(XmlElement node) {
    final items = <EpubManifestItem>[];

    final children = node.children.whereType<XmlElement>();
    for (final manifestItemNode in children) {
      if (manifestItemNode.name.local.toLowerCase() != 'item') continue;
      items.add(EpubManifestItem.readXml(manifestItemNode));
    }
    return EpubManifest(items: items);
  }

  @override
  EpubManifest readXMLBuilder(XmlElement node) => EpubManifest.readXml(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'manifest',
      namespace: namespace,
      nest: () {
        for (final item in items) {
          item.writeXML(builder, namespace);
        }
      },
    );
  }

  EpubManifestItem? getItemByOrNull(
    bool? Function(EpubManifestItem item) predicate,
  ) =>
      items.firstWhereOrNull((item) => predicate.call(item) ?? false);

  EpubManifestItem? getItemByPropertyOrNull(String property) =>
      getItemByOrNull((item) => item.properties?.contains(property));

  EpubManifestItem getItemByProperty(String property) {
    final item = getItemByPropertyOrNull(property);
    if (item != null) return item;
    throw ArgumentError('Item not found: $property');
  }

  EpubManifestItem? getItemByIdOrNull(String id) =>
      getItemByOrNull((item) => item.id == id);

  EpubManifestItem getItemById(String id) {
    final item = getItemByIdOrNull(id);
    if (item != null) return item;
    throw ArgumentError('Item not found: $id');
  }
}
