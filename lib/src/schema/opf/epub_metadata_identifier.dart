import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_metadata_identifier.freezed.dart';

@freezed
class EpubMetadataIdentifier
    with _$EpubMetadataIdentifier, EpubReadWrite<EpubMetadataIdentifier> {
  const factory EpubMetadataIdentifier({
    String? id,
    String? scheme,
    String? identifier,
  }) = _EpubMetadataIdentifier;

  const EpubMetadataIdentifier._();

  factory EpubMetadataIdentifier.readXML(XmlElement node) {
    String? id;
    String? scheme;
    String? identifier;

    for (final attribute in node.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'scheme':
          scheme = attributeValue;
      }
    }
    identifier = node.innerText;

    return EpubMetadataIdentifier(
      id: id,
      scheme: scheme,
      identifier: identifier,
    );
  }

  @override
  EpubMetadataIdentifier readXMLBuilder(XmlElement node) =>
      EpubMetadataIdentifier.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'identifier',
      namespace: namespace,
      nest: () {
        builder
          ..attribute('id', id)
          ..attribute('scheme', scheme, namespace: namespace)
          ..text(identifier!);
      },
    );
  }
}
