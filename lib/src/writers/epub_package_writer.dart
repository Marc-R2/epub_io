import 'package:epub_io/src/schema/opf/epub_package.dart';
import 'package:epub_io/src/schema/opf/epub_version.dart';
import 'package:epub_io/src/writers/epub_guide_writer.dart';
import 'package:epub_io/src/writers/epub_manifest_writer.dart';
import 'package:epub_io/src/writers/epub_metadata_writer.dart';
import 'package:epub_io/src/writers/epub_spine_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder, XmlElement, XmlNodeType;

class EpubPackageWriter {
  static const String _namespace = 'http://www.idpf.org/2007/opf';

  static String writeContent(EpubPackage package) {
    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0"');

    builder.element(
      'package',
      attributes: {
        'version': package.version == EpubVersion.epub2 ? '2.0' : '3.0',
        'unique-identifier': 'etextno',
      },
      nest: () {
        builder.namespace(_namespace);

        EpubMetadataWriter.writeMetadata(
          builder,
          package.metadata,
          package.version,
        );
        if (package.manifest != null) {
          EpubManifestWriter.writeManifest(builder, package.manifest!);
        }
        if (package.spine != null) {
          EpubSpineWriter.writeSpine(builder, package.spine!);
        }
        if (package.guide != null) {
          EpubGuideWriter.writeGuide(builder, package.guide!);
        }
      },
    );

    return builder.buildDocument().toXmlString(
          pretty: true,
          preserveWhitespace: (node) {
            if (node is! XmlElement || node.children.length != 1) return false;
            return node.children.first.nodeType == XmlNodeType.TEXT;
          },
        );
  }
}
