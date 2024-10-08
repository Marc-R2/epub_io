import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart';

/// The `PackageReader` class provides methods to read and parse
/// the various components of an EPUB package from its XML representation,
/// such as metadata, manifest, spine, and guide.
class PackageReader {
  /// Parses the `<metadata>` element from an XML document
  /// and converts it into an [EpubMetadata] object.
  ///
  /// - **[metadataNode]**: The XML element representing the metadata section.
  /// - **[epubVersion]**: The EPUB version (e.g., 2.0, 3.0).
  ///
  /// Returns an [EpubMetadata] object containing metadata information.
  static EpubMetadata readMetadata(
    XmlElement metadataNode,
    EpubVersion? epubVersion,
  ) {
    String? description;
    final titles = <String>[];
    final creators = <EpubMetadataCreator>[];
    final subjects = <String>[];
    final publishers = <String>[];
    final contributors = <EpubMetadataContributor>[];
    final dates = <EpubMetadataDate>[];
    final types = <String>[];
    final formats = <String>[];
    final identifiers = <EpubMetadataIdentifier>[];
    final sources = <String>[];
    final languages = <String>[];
    final relations = <String>[];
    final coverages = <String>[];
    final rights = <String>[];
    final links = <Link>[];
    final metaItems = <EpubMetadataMeta>[];
    metadataNode.children.whereType<XmlElement>().forEach(
      (XmlElement metadataItemNode) {
        final innerText = metadataItemNode.innerText;

        return switch (metadataItemNode.name.local.toLowerCase()) {
          'title' => titles.add(innerText),
          'creator' =>
            creators.add(EpubMetadataCreator.readXML(metadataItemNode)),
          'subject' => subjects.add(innerText),
          'description' => description = innerText,
          'publisher' => publishers.add(innerText),
          'contributor' =>
            contributors.add(EpubMetadataContributor.readXML(metadataItemNode)),
          'date' => dates.add(EpubMetadataDate.readXML(metadataItemNode)),
          'type' => types.add(innerText),
          'format' => formats.add(innerText),
          'identifier' =>
            identifiers.add(EpubMetadataIdentifier.readXML(metadataItemNode)),
          'source' => sources.add(innerText),
          'language' => languages.add(innerText),
          'relation' => relations.add(innerText),
          'coverage' => coverages.add(innerText),
          'rights' => rights.add(innerText),
          'link' => links.add(Link.readXML(metadataItemNode)),
          'meta' when epubVersion == EpubVersion.epub2 =>
            metaItems.add(EpubMetadataMetaV2.readXML(metadataItemNode)),
          'meta' when epubVersion == EpubVersion.epub3 =>
            metaItems.add(EpubMetadataMetaV3.readXML(metadataItemNode)),
          _ => null,
        };
      },
    );
    return EpubMetadata(
      titles: titles,
      creators: creators,
      subjects: subjects,
      description: description,
      publishers: publishers,
      contributors: contributors,
      dates: dates,
      types: types,
      formats: formats,
      identifiers: identifiers,
      sources: sources,
      languages: languages,
      relations: relations,
      coverages: coverages,
      rights: rights,
      metaItems: metaItems,
      xmlnsDc: metadataNode.getAttribute('xmlns:dc'),
      xmlnsOpf: metadataNode.getAttribute('xmlns:opf'),
      links: links,
    );
  }

  /// Reads and parses the `package.opf` file from the EPUB archive
  /// to extract the package information.
  ///
  /// - **[epubArchive]**: The archive containing the EPUB file.
  /// - **[container]**: The `EpubContainer` object that holds information
  ///   about the EPUB's structure.
  ///
  /// Returns an [EpubPackage] object containing the metadata, manifest,
  /// spine, guide, and other package information.
  static Future<EpubPackage> readPackage(
    EpubArchive epubArchive,
    EpubContainer container,
  ) async {
    final rootFileEntry =
        epubArchive.getFile(EpubUri.parse(container.rootFilePath));

    final containerDocument = XmlDocument.parse(rootFileEntry.contentUtf8);

    // TODO(Marc-R2): find out if this const can't be dynamic
    const opfNamespace = 'http://www.idpf.org/2007/opf';
    final packageNode = containerDocument
        .findElements('package', namespace: opfNamespace)
        .firstWhere((XmlElement? elem) => elem != null);

    final nameSpace = NameSpace(
      uri: packageNode.namespaceUri!,
      prefix: packageNode.namespacePrefix,
    );

    XmlElement? getNodeOrNull(String name) => packageNode
        .findElements(name, namespace: nameSpace.uri)
        .firstWhereOrNull((XmlElement? elem) => elem != null);

    XmlElement getNode(String name) =>
        getNodeOrNull(name) ??
        (throw Exception('Incorrect EPUB package: $name node is missing'));

    final epubVersionValue = packageNode.getAttribute('version');
    final version = EpubVersion.fromString(epubVersionValue);

    final bindings = getNodeOrNull('bindings')
        ?.children
        .whereType<XmlElement>()
        .map(MediaType.readXML);

    return EpubPackage(
      nameSpace: nameSpace,
      version: version,
      metadata: readMetadata(getNode('metadata'), version),
      manifest: getNode('manifest').readElement(EpubManifest.readXml),
      spine: getNode('spine').readElement(EpubSpine.readXml),
      guide: getNodeOrNull('guide')?.readElement(EpubGuide.readXML),
      uniqueIdentifier: packageNode.getAttribute('unique-identifier'),
      prefix: packageNode.getAttribute('prefix'),
      xmlLang: packageNode.getAttribute('xml:lang'),
      bindings: bindings?.toList(),
      xmlInfo: XMLInfo.fromXmlDocument(containerDocument),
    );
  }
}
