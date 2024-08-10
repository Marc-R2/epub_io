import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder;

/// The `EpubGuideWriter` class is responsible for writing the guide section
/// of an EPUB file. The guide provides references to key structural elements
/// of the book, like the cover, table of contents, or any other important part.
class EpubGuideWriter {
  /// Writes the guide section of the EPUB file.
  ///
  /// This method generates the XML structure for the guide element, which
  /// contains a list of reference items. These references typically point to
  /// key sections in the EPUB, such as the cover, table of contents, etc.
  ///
  /// - [builder]: The `XmlBuilder` used to construct the XML structure.
  /// - [guide]: The `EpubGuide` object containing the list of guide items.
  /// - [nameSpace]: The `NameSpace` object specifying the XML namespace.
  static void writeGuide(
    XmlBuilder builder,
    EpubGuide guide,
    NameSpace nameSpace,
  ) {
    builder.element(
      'guide',
      namespace: nameSpace.uri,
      nest: () => builder.writeXmls(
        'reference',
        guide.items,
        nameSpace: nameSpace,
      ),
    );
  }
}
