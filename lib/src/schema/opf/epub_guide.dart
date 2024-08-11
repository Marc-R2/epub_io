import 'package:epub_io/src/epub_read_write.dart';
import 'package:epub_io/src/schema/opf/epub_guide_reference.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_guide.freezed.dart';

@freezed
class EpubGuide with _$EpubGuide, EpubReadWrite<EpubGuide> {
  const factory EpubGuide({
    @Default(<EpubGuideReference>[]) List<EpubGuideReference> items,
  }) = _EpubGuide;

  const EpubGuide._();

  factory EpubGuide.readXML(XmlElement node) {
    final items = <EpubGuideReference>[];
    final children = node.children.whereType<XmlElement>();
    for (final guideReferenceNode in children) {
      if (guideReferenceNode.name.local.toLowerCase() != 'reference') continue;
      items.add(EpubGuideReference.readXML(guideReferenceNode));
    }
    return EpubGuide(items: items);
  }

  @override
  EpubGuide readXMLBuilder(XmlElement node) => EpubGuide.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'guide',
      namespace: namespace,
      nest: () {
        for (final item in items) {
          item.writeXML(builder, namespace);
        }
      },
    );
  }
}
