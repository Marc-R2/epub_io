import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubContainerWriter {
  static String write(EpubContainer container) {
    final builder = XmlBuilder();

    builder
      ..processing('xml', container.xmlInfo.contentString)
      ..element(
        'container',
        attributes: {
          if (container.xmlns != null) 'xmlns': container.xmlns!,
          if (container.version != null) 'version': container.version!,
        },
        nest: () => builder.element(
          'rootfiles',
          nest: () => builder.writeXmls('rootfile', container.rootFiles),
        ),
      );

    return builder.buildDocument().toXmlString(pretty: true);
  }
}
