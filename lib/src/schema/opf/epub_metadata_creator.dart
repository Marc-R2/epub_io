import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_metadata_creator.freezed.dart';

@freezed
class EpubMetadataCreator
    with _$EpubMetadataCreator, EpubReadWrite<EpubMetadataCreator> {
  const factory EpubMetadataCreator({
    required String creator,
    String? fileAs,
    String? role,
  }) = _EpubMetadataCreator;

  const EpubMetadataCreator._();

  factory EpubMetadataCreator.readXML(XmlElement node) {
    String? creator;
    String? role;
    String? fileAs;

    for (final attribute in node.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'role':
          role = attributeValue;
        case 'file-as':
          fileAs = attributeValue;
      }
    }
    creator = node.innerText;

    return EpubMetadataCreator(
      creator: creator,
      role: role,
      fileAs: fileAs,
    );
  }

  @override
  EpubMetadataCreator readXMLBuilder(XmlElement node) =>
      EpubMetadataCreator.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'creator',
      namespace: namespace,
      nest: () {
        builder
          ..attribute('role', role, namespace: namespace)
          ..attribute('file-as', fileAs, namespace: namespace)
          ..text(creator);
      },
    );
  }
}
