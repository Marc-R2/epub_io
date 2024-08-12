import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_metadata_meta.freezed.dart';

mixin EpubMetadataMeta<T extends String?> implements EpubWrite {
  T get content;

  String? get name;

  Map<String, String> get attributes;

  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'meta',
      namespace: namespace,
      nest: () {
        for (final entry in attributes.entries) {
          builder.attribute(entry.key, entry.value);
        }
        if (this is EpubMetadataMetaV3) {
          builder.text((this as EpubMetadataMetaV3).content);
        }
      },
    );
  }
}

@freezed
class EpubMetadataMetaV2
    with
        _$EpubMetadataMetaV2,
        EpubMetadataMeta<String?>,
        EpubReadWrite<EpubMetadataMetaV2> {
  const factory EpubMetadataMetaV2({
    required Map<String, String> attributes,
    String? content,
    String? name,
  }) = _EpubMetadataMetaV2;

  const EpubMetadataMetaV2._();

  factory EpubMetadataMetaV2.readXML(XmlElement node) {
    final attributes = <String, String>{};

    for (final attribute in node.attributes) {
      attributes[attribute.name.local.toLowerCase()] = attribute.value;
    }

    /* assert(
      attributes.keys.every((key) => {'name', 'content'}.contains(key)),
      'Expected only name and content attributes in ${attributes.keys}',
    ); */

    return EpubMetadataMetaV2(
      name: attributes['name'],
      content: attributes['content'],
      attributes: attributes,
    );
  }

  @override
  EpubMetadataMetaV2 readXMLBuilder(XmlElement node) =>
      EpubMetadataMetaV2.readXML(node);
}

@freezed
class EpubMetadataMetaV3
    with
        _$EpubMetadataMetaV3,
        EpubMetadataMeta<String>,
        EpubReadWrite<EpubMetadataMetaV3> {
  const factory EpubMetadataMetaV3({
    required String content,
    required Map<String, String> attributes,
    String? id,
    String? name,
    String? refines,
    String? property,
    String? scheme,
    String? lang,
    String? dcterms,
  }) = _EpubMetadataMetaV3;

  const EpubMetadataMetaV3._();

  factory EpubMetadataMetaV3.readXML(XmlElement node) {
    final attributes = <String, String>{};
    String? content;

    for (final metadataMetaNodeAttribute in node.attributes) {
      final name = metadataMetaNodeAttribute.name.local.toLowerCase();
      attributes[name] = metadataMetaNodeAttribute.value;
    }
    content = node.innerText;
    if (attributes.containsKey('content') && content.isEmpty) {
      content = attributes['content'];
    }

    /* const expectedAttributes = {
      ...{'id', 'refines', 'property', 'scheme', 'name', 'content', 'lang'},
      ...{'dcterms'},
    };
    assert(
      attributes.keys.every((key) => expectedAttributes.contains(key)),
      'Expected only $expectedAttributes attributes in $attributes',
    ); */

    return EpubMetadataMetaV3(
      id: attributes['id'],
      name: attributes['name'],
      refines: attributes['refines'],
      property: attributes['property'],
      scheme: attributes['scheme'],
      content: content!,
      lang: attributes['lang'],
      dcterms: attributes['dcterms'],
      attributes: attributes,
    );
  }

  @override
  EpubMetadataMetaV3 readXMLBuilder(XmlElement node) =>
      EpubMetadataMetaV3.readXML(node);
}
