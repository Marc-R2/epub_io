import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_guide_reference.freezed.dart';
part 'epub_guide_reference.g.dart';

@freezed
class EpubGuideReference
    with _$EpubGuideReference, EpubReadWrite<EpubGuideReference> {
  const factory EpubGuideReference({
    required String type,
    required String href,
    String? title,
  }) = _EpubGuideReference;

  factory EpubGuideReference.fromJson(Map<String, dynamic> json) =>
      _$EpubGuideReferenceFromJson(json);

  const EpubGuideReference._();

  factory EpubGuideReference.readXML(XmlElement node) {
    String? type;
    String? title;
    String? href;

    for (final attribute in node.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'type':
          type = attributeValue;
        case 'title':
          title = attributeValue;
        case 'href':
          href = attributeValue;
      }
    }
    if (type == null || type.isEmpty) {
      throw Exception('Incorrect EPUB guide: item type is missing');
    }
    if (href == null || href.isEmpty) {
      throw Exception('Incorrect EPUB guide: item href is missing');
    }

    return EpubGuideReference(type: type, title: title, href: href);
  }

  @override
  EpubGuideReference readXMLBuilder(XmlElement node) =>
      EpubGuideReference.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'reference',
      namespace: namespace,
      attributes: {
        'type': type,
        if (title != null) 'title': title!,
        'href': href,
      },
    );
  }
}
