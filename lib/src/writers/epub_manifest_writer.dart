import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart' show XmlBuilder;

/// The `EpubManifestWriter` class is responsible for writing the manifest
/// section of an EPUB file. The manifest lists all the resources
/// (like HTML files, images, stylesheets) that are part of the EPUB.
class EpubManifestWriter {
  /// Writes the manifest section of the EPUB file.
  ///
  /// This method generates the XML structure for the manifest element, which
  /// includes each resource item with its attributes such as `id`, `href`,
  /// `media-type`, and others.
  ///
  /// - [builder]: The `XmlBuilder` used to construct the XML structure.
  /// - [manifest]: The `EpubManifest` object containing the list of items
  /// to be included in the manifest.
  /// - [nameSpace]: The `NameSpace` object specifying the XML namespace.
  static void writeManifest(
    XmlBuilder builder,
    EpubManifest manifest,
    NameSpace nameSpace,
  ) {
    builder.element(
      'manifest',
      namespace: nameSpace.uri,
      nest: () {
        for (final item in manifest.items) {
          item.writeXML(builder, nameSpace.uri);
        }
      },
    );
  }
}
