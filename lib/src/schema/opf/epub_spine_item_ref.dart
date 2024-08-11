import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_spine_item_ref.freezed.dart';

@freezed
class EpubSpineItemRef
    with _$EpubSpineItemRef, EpubReadWrite<EpubSpineItemRef> {
  const factory EpubSpineItemRef({
    required String idRef,
    bool? isLinear,
    String? properties,
  }) = _EpubSpineItemRef;

  const EpubSpineItemRef._();

  factory EpubSpineItemRef.readXML(XmlElement node) {
    final idRef = node.getAttribute('idref');
    if (idRef == null || idRef.isEmpty) {
      throw Exception('Incorrect EPUB spine: item ID ref is missing');
    }

    final linearAttribute = node.getAttribute('linear');

    bool? isLinear;
    if (linearAttribute != null) {
      isLinear = linearAttribute.toLowerCase() == 'yes';
    }

    return EpubSpineItemRef(
      idRef: idRef,
      isLinear: isLinear,
      properties: node.getAttribute('properties'),
    );
  }

  @override
  EpubSpineItemRef readXMLBuilder(XmlElement node) =>
      EpubSpineItemRef.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'itemref',
      namespace: namespace,
      attributes: {
        'idref': idRef,
        if (isLinear != null) 'linear': isLinear! ? 'yes' : 'no',
        if (properties != null) 'properties': properties!,
      },
    );
  }
}
