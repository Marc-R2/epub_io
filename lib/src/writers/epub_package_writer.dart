import 'package:epub_io/src/schema/opf/epub_package.dart';
import 'package:epub_io/src/schema/opf/epub_version.dart';
import 'package:epub_io/src/writers/epub_guide_writer.dart';
import 'package:epub_io/src/writers/epub_manifest_writer.dart';
import 'package:epub_io/src/writers/epub_metadata_writer.dart';
import 'package:epub_io/src/writers/epub_spine_writer.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder, XmlElement, XmlNodeType;

/// The `EpubPackageWriter` class is responsible for generating the entire
/// content of an EPUB package. It handles the creation of the core components
/// of the EPUB, including metadata, manifest, spine, and guide.
class EpubPackageWriter {
  /// Generates the complete XML content for an EPUB package.
  ///
  /// This method constructs the XML structure for the package element, which
  /// serves as the root element of the EPUB file. It includes metadata,
  /// manifest, spine, and guide elements, utilizing the respective
  /// writer classes to generate each section.
  ///
  /// - [package]: The `EpubPackage` object that contains all the necessary
  ///   information for creating the EPUB package.
  ///
  /// Returns a formatted XML string representing the entire EPUB package.
  static String writeContent(EpubPackage package) {
    final builder = XmlBuilder();

    final nameSpace = package.nameSpace;

    builder
      ..processing('xml', package.xmlInfo.contentString)
      ..element(
        'package',
        namespace: nameSpace.uri,
        namespaces: {nameSpace.uri: nameSpace.prefix},
        attributes: {
          'version': package.version == EpubVersion.epub2 ? '2.0' : '3.0',
          if (package.uniqueIdentifier != null)
            'unique-identifier': package.uniqueIdentifier!,
          if (package.xmlLang != null) 'xml:lang': package.xmlLang!,
          if (package.prefix != null) 'prefix': package.prefix!,
        },
        nest: () {
          EpubMetadataWriter.writeMetadata(
            builder,
            package.metadata,
            package.version,
            nameSpace,
          );
          if (package.manifest != null) {
            EpubManifestWriter.writeManifest(
              builder,
              package.manifest!,
              nameSpace,
            );
          }
          if (package.spine != null) {
            EpubSpineWriter.writeSpine(builder, package.spine!, nameSpace);
          }
          if (package.guide != null) {
            EpubGuideWriter.writeGuide(builder, package.guide!, nameSpace);
          }
          if (package.bindings != null) {
            builder.element(
              'bindings',
              namespace: nameSpace.uri,
              nest: () => builder.writeXmls('mediaType', package.bindings),
            );
          }
        },
      );

    return builder.buildDocument().toXmlString(
          pretty: true,
          // Make sure to preserve whitespace for text nodes.
          preserveWhitespace: (node) {
            if (node is! XmlElement || node.children.length != 1) return false;
            return node.children.first.nodeType == XmlNodeType.TEXT;
          },
        );
  }
}
