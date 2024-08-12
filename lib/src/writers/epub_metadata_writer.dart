import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder;

/// The `EpubMetadataWriter` class is responsible for generating the metadata
/// section of an EPUB file from the provided metadata object.
class EpubMetadataWriter {
  /// Writes the metadata section of the EPUB file.
  ///
  /// This method generates the XML structure for the metadata element,
  /// including information such as title, creator, identifier, and more.
  /// The metadata is written according
  /// to the specified EPUB version and namespace.
  ///
  /// - [builder]: The `XmlBuilder` used to construct the XML structure.
  /// - [meta]: The `EpubMetadata` object containing metadata details.
  /// - [version]: The `EpubVersion` specifying the EPUB version.
  /// - [nameSpace]: The `NameSpace` object specifying the XML namespace.
  static void writeMetadata(
    XmlBuilder builder,
    EpubMetadata? meta,
    NameSpace nameSpace,
  ) {
    final dcNamespace = meta!.xmlnsDc;
    final opfNamespace = meta.xmlnsOpf;

    builder.element(
      'metadata',
      namespace: nameSpace.uri,
      namespaces: {
        if (opfNamespace != null) opfNamespace: 'opf',
        if (dcNamespace != null) dcNamespace: 'dc',
      },
      nest: () {
        builder
          ..nests('title', meta.titles)
          ..nests('subject', meta.subjects)
          ..nests('publisher', meta.publishers)
          ..nests('type', meta.types)
          ..nests('format', meta.formats)
          ..nests('source', meta.sources)
          ..nests('language', meta.languages)
          ..nests('relation', meta.relations)
          ..nests('coverage', meta.coverages)
          ..nests('rights', meta.rights)
          ..writeEpubWrites(meta.links, nameSpace.uri)
          ..writeEpubWrites(meta.creators, dcNamespace)
          ..writeEpubWrites(meta.contributors, dcNamespace)
          ..writeEpubWrites(meta.dates, dcNamespace)
          ..writeEpubWrites(meta.identifiers, dcNamespace)
          ..writeEpubWrites(meta.metaItems);

        if (meta.description != null) {
          builder.element(
            'description',
            namespace: dcNamespace,
            nest: meta.description,
          );
        }
      },
    );
  }
}
