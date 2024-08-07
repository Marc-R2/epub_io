import 'package:epub_io/src/schema/opf/epub_package.dart';
import 'package:epub_io/src/schema/opf/epub_version.dart';
import 'package:epub_io/src/writers/epub_guide_writer.dart';
import 'package:epub_io/src/writers/epub_manifest_writer.dart';
import 'package:epub_io/src/writers/epub_metadata_writer.dart';
import 'package:epub_io/src/writers/epub_spine_writer.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder, XmlElement, XmlNodeType;

extension NameSpaceObj on XmlBuilder {
  void nameSpaceObj(NameSpace nameSpace) =>
      namespace(nameSpace.uri, nameSpace.prefix);
}

class EpubPackageWriter {
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
          preserveWhitespace: (node) {
            if (node is! XmlElement || node.children.length != 1) return false;
            return node.children.first.nodeType == XmlNodeType.TEXT;
          },
        );
  }
}
