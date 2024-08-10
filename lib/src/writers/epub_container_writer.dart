import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder;

/// The `EpubContainerWriter` class is responsible for generating the XML
/// content for the EPUB container file (`container.xml`).
/// This file is a crucial part of the EPUB structure,
/// specifying the root files of the EPUB package.
class EpubContainerWriter {
  /// Generates the XML content for the `container.xml` file of an EPUB package.
  ///
  /// This method constructs the XML structure for the `container` element,
  /// including its `rootfiles` element,
  /// which references the root files of the EPUB.
  ///
  /// - [container]: The `EpubContainer` object containing the necessary
  ///   information for the `container.xml` file.
  ///
  /// Returns a formatted XML string representing the `container.xml` content.
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
