import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubContainerWriter {
  static String write(EpubContainer container) {
    final builder = XmlBuilder();

    final sb = StringBuffer();

    if (container.containerXML.xmlVersion != null) {
      sb.write('version="${container.containerXML.xmlVersion}"');
    }
    if (container.containerXML.xmlEncoding != null) {
      if (sb.isNotEmpty) sb.write(' ');
      sb.write('encoding="${container.containerXML.xmlEncoding}"');
    }
    if (container.containerXML.xmlStandalone != null) {
      if (sb.isNotEmpty) sb.write(' ');
      sb
        ..write('standalone="')
        ..write(container.containerXML.xmlStandalone! ? 'yes' : 'no')
        ..write('"');
    }

    builder
      ..processing('xml', sb.toString())
      ..element(
        'container',
        attributes: {
          if (container.xmlns != null) 'xmlns': container.xmlns!,
          if (container.version != null) 'version': container.version!,
        },
        nest: () {
          builder.element(
            'rootfiles',
            nest: () {
              for (final rootFile in container.rootFiles!) {
                builder.element(
                  'rootfile',
                  attributes: {
                    'full-path': rootFile.fullPath,
                    if (rootFile.mediaType != null)
                      'media-type': rootFile.mediaType!,
                  },
                );
              }
            },
          );
        },
      );

    return builder.buildDocument().toXmlString(pretty: true);
  }
}
