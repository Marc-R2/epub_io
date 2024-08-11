import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart' show XmlBuilder;

/// The `EpubSpineWriter` class is responsible for writing the spine section
/// of an EPUB file. The spine defines the linear reading order of the content
/// documents within the EPUB.
class EpubSpineWriter {
  /// Writes the spine section of the EPUB file.
  ///
  /// This method generates the XML structure for the spine element, including
  /// attributes like `toc` and `page-progression-direction`.
  /// It then iterates over each item in the spine
  /// to create the `itemref` elements that reference the content documents.
  ///
  /// - [builder]: The `XmlBuilder` used to construct the XML structure.
  /// - [spine]: The `EpubSpine` object containing the list of spine items.
  /// - [nameSpace]: The `NameSpace` object specifying the XML namespace.
  static void writeSpine(
    XmlBuilder builder,
    EpubSpine spine,
    NameSpace nameSpace,
  ) {
    builder.element(
      'spine',
      namespace: nameSpace.uri,
      attributes: {
        if (spine.tableOfContents != null) 'toc': spine.tableOfContents!,
        'page-progression-direction': spine.ltr ? 'ltr' : 'rtl',
      },
      nest: () {
        for (final spineitem in spine.items) {
          spineitem.writeXML(builder, nameSpace.uri);
        }
      },
    );
  }
}
