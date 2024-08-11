import 'package:epub_io/src/epub_read_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_metadata_date.freezed.dart';

@freezed
class EpubMetadataDate
    with _$EpubMetadataDate, EpubReadWrite<EpubMetadataDate> {
  const factory EpubMetadataDate({
    required String date,
    String? event,
  }) = _EpubMetadataDate;

  const EpubMetadataDate._();

  factory EpubMetadataDate.readXML(XmlElement node) {
    String? event;
    String? date;

    final eventAttribute = node.getAttribute(
      'event',
      namespace: node.name.namespaceUri,
    );
    if (eventAttribute != null && eventAttribute.isNotEmpty) {
      event = eventAttribute;
    }
    date = node.innerText;

    return EpubMetadataDate(
      date: date,
      event: event,
    );
  }

  @override
  EpubMetadataDate readXMLBuilder(XmlElement node) =>
      EpubMetadataDate.readXML(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'date',
      namespace: namespace,
      nest: () {
        builder
          ..attribute('event', event, namespace: namespace)
          ..text(date);
      },
    );
  }
}
