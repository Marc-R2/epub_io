import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_metadata_contributor.freezed.dart';

@freezed
class EpubMetadataContributor
    with _$EpubMetadataContributor, EpubReadWrite<EpubMetadataContributor> {
  const factory EpubMetadataContributor({
    required String contributor,
    String? fileAs,
    String? role,
  }) = _EpubMetadataContributor;

  const EpubMetadataContributor._();

  factory EpubMetadataContributor.readXML(XmlElement node) =>
      EpubMetadataContributor(
        contributor: node.innerText,
        fileAs: node.getAttribute('file-as'),
        role: node.getAttribute('role'),
      );

  @override
  EpubMetadataContributor readXMLBuilder(XmlElement node) =>
      EpubMetadataContributor.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'contributor',
      namespace: namespace,
      nest: () {
        builder
          ..attribute('role', role, namespace: namespace)
          ..attribute('file-as', fileAs, namespace: namespace)
          ..text(contributor);
      },
    );
  }
}
