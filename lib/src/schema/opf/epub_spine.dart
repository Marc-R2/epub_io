import 'package:epub_io/src/epub_read_write.dart';
import 'package:epub_io/src/schema/opf/epub_spine_item_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_spine.freezed.dart';

@freezed
class EpubSpine with _$EpubSpine, EpubReadWrite<EpubSpine> {
  const factory EpubSpine({
    required bool ltr,
    String? tableOfContents,
    @Default(<EpubSpineItemRef>[]) List<EpubSpineItemRef> items,
  }) = _EpubSpine;

  const EpubSpine._();

  factory EpubSpine.readXml(XmlElement node) {
    final items = <EpubSpineItemRef>[];
    final tableOfContents = node.getAttribute('toc');

    final pageProgression = node.getAttribute('page-progression-direction');
    final ltr =
        (pageProgression == null) || pageProgression.toLowerCase() == 'ltr';

    node.children.whereType<XmlElement>().forEach(
      (XmlElement spineItemNode) {
        if (spineItemNode.name.local.toLowerCase() != 'itemref') return;
        items.add(EpubSpineItemRef.readXML(spineItemNode));
      },
    );
    return EpubSpine(
      items: items,
      tableOfContents: tableOfContents,
      ltr: ltr,
    );
  }

  @override
  EpubSpine readXMLBuilder(XmlElement node) => EpubSpine.readXml(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'spine',
      namespace: namespace,
      attributes: {
        if (tableOfContents != null) 'toc': tableOfContents!,
        'page-progression-direction': ltr ? 'ltr' : 'rtl',
      },
      nest: () {
        for (final spineitem in items) {
          spineitem.writeXML(builder, namespace);
        }
      },
    );
  }
}
