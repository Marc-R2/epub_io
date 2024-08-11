import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_manifest_item.freezed.dart';
part 'epub_manifest_item.g.dart';

@freezed
class EpubManifestItem
    with _$EpubManifestItem, EpubReadWrite<EpubManifestItem> {
  const factory EpubManifestItem({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'href') required String href,
    @JsonKey(name: 'media-type') required String mediaType,
    @JsonKey(name: 'media-overlay') String? mediaOverlay,
    @JsonKey(name: 'required-namespace') String? requiredNamespace,
    @JsonKey(name: 'required-modules') String? requiredModules,
    @JsonKey(name: 'fallback') String? fallback,
    @JsonKey(name: 'fallback-style') String? fallbackStyle,
    @JsonKey(name: 'properties') Set<String>? properties,
  }) = _EpubManifestItem;

  factory EpubManifestItem.fromJson(Map<String, dynamic> json) =>
      _$EpubManifestItemFromJson(json);

  const EpubManifestItem._();

  factory EpubManifestItem.readXml(XmlElement node) {
    final itemMap = <String, dynamic>{};
    for (final itemAttr in node.attributes) {
      final key = itemAttr.name.local.toLowerCase();
      itemMap[key] = itemAttr.value;
      if (key == 'properties') itemMap[key] = itemAttr.value.split(' ');
    }
    return EpubManifestItem.fromJson(itemMap);
  }

  @override
  EpubManifestItem readXMLBuilder(XmlElement node) =>
      EpubManifestItem.readXml(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'item',
      namespace: namespace,
      nest: () {
        builder
          ..attribute('id', id)
          ..attribute('href', href)
          ..attribute('media-type', mediaType)
          ..attribute('media-overlay', mediaOverlay)
          ..attribute('required-namespace', requiredNamespace)
          ..attribute('required-modules', requiredModules)
          ..attribute('fallback', fallback)
          ..attribute('fallback-style', fallbackStyle)
          ..attribute('properties', properties?.join(' '));
      },
    );
  }
}
