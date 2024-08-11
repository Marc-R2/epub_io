import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart';

/// The `PackageReader` class provides methods to read and parse
/// the various components of an EPUB package from its XML representation,
/// such as metadata, manifest, spine, and guide.
class PackageReader {
  /// Parses a single `<link>` element within the `<metadata>` section
  /// and returns a [Link] object.
  ///
  /// - **[manifestNode]**: The XML element representing a link in the metadata.
  ///
  /// Returns a [Link] object containing `href`, `rel`, and `refines` attributes
  static Link readMetadataLink(XmlElement manifestNode) {
    final href = manifestNode.getAttribute('href');
    final rel = manifestNode.getAttribute('rel');
    final refines = manifestNode.getAttribute('refines');

    return Link(href: href!, rel: rel, refines: refines);
  }

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
            identifiers.add(readMetadataIdentifier(metadataItemNode)),
          'source' => sources.add(innerText),
          'language' => languages.add(innerText),
          'relation' => relations.add(innerText),
          'coverage' => coverages.add(innerText),
          'rights' => rights.add(innerText),
          'link' => links.add(readMetadataLink(metadataItemNode)),
          'meta' when epubVersion == EpubVersion.epub2 =>
            metaItems.add(readMetadataMetaVersion2(metadataItemNode)),
          'meta' when epubVersion == EpubVersion.epub3 =>
            metaItems.add(readMetadataMetaVersion3(metadataItemNode)),
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

  /// Parses an `<identifier>` element within the `<metadata>` section
  /// and returns an [EpubMetadataIdentifier] object.
  ///
  /// - **[metadataIdentifierNode]**: The XML element representing an identifier
  ///
  /// Returns an [EpubMetadataIdentifier] object containing
  /// the identifier's ID, scheme, and value.
  static EpubMetadataIdentifier readMetadataIdentifier(
    XmlElement metadataIdentifierNode,
  ) {
    String? id;
    String? scheme;
    String? identifier;

    for (final attribute in metadataIdentifierNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'scheme':
          scheme = attributeValue;
      }
    }
    identifier = metadataIdentifierNode.innerText;

    return EpubMetadataIdentifier(
      id: id,
      scheme: scheme,
      identifier: identifier,
    );
  }

  /// Parses a `<meta>` element within the `<metadata>` section of an
  /// EPUB 2.0 document and returns an [EpubMetadataMeta] object.
  ///
  /// - **[metadataMetaNode]**: The XML element representing a meta item.
  ///
  /// Returns an [EpubMetadataMeta] object containing
  /// the meta item's name and content.
  static EpubMetadataMeta readMetadataMetaVersion2(
    XmlElement metadataMetaNode,
  ) {
    String? name;
    String? content;
    for (final attribute in metadataMetaNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'name':
          name = attributeValue;
        case 'content':
          content = attributeValue;
      }
    }
    return EpubMetadataMeta(
      name: name,
      content: content,
    );
  }

  /// Parses a `<meta>` element within the `<metadata>` section of an
  /// EPUB 3.0 document and returns an `EpubMetadataMeta` object.
  ///
  /// - **[metadataMetaNode]**: The XML element representing a meta item.
  ///
  /// Returns an [EpubMetadataMeta] object containing the
  /// meta item's various attributes.
  static EpubMetadataMeta readMetadataMetaVersion3(
    XmlElement metadataMetaNode,
  ) {
    final attributes = <String, String>{};
    String? id;
    String? refines;
    String? property;
    String? scheme;
    String? content;
    for (final metadataMetaNodeAttribute in metadataMetaNode.attributes) {
      final attributeValue = metadataMetaNodeAttribute.value;

      final name = metadataMetaNodeAttribute.name.local.toLowerCase();

      attributes[name] = attributeValue;
      switch (name) {
        case 'id':
          id = attributeValue;
        case 'refines':
          refines = attributeValue;
        case 'property':
          property = attributeValue;
        case 'scheme':
          scheme = attributeValue;
      }
    }
    content = metadataMetaNode.innerText;

    return EpubMetadataMeta(
      id: id,
      refines: refines,
      property: property,
      scheme: scheme,
      content: content,
      attributes: attributes,
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

    XmlElement? getNodeOrNull(String name, {String? namespace}) => packageNode
        .findElements(name, namespace: namespace)
        .firstWhereOrNull((XmlElement? elem) => elem != null);

    XmlElement getNode(String name, {String? namespace}) =>
        getNodeOrNull(name, namespace: namespace) ??
        (throw Exception('Incorrect EPUB package: $name node is missing'));

    final nameSpace = NameSpace(
      uri: packageNode.namespaceUri!,
      prefix: packageNode.namespacePrefix,
    );

    final uniqueIdentifier = packageNode.getAttribute('unique-identifier');
    final prefix = packageNode.getAttribute('prefix');
    final xmlLang = packageNode.getAttribute('xml:lang');

    final epubVersionValue = packageNode.getAttribute('version');
    final version = switch (epubVersionValue) {
      '2.0' => EpubVersion.epub2,
      '3.0' => EpubVersion.epub3,
      _ => throw Exception('Unsupported EPUB version: $epubVersionValue.'),
    };

    final metadataNode = getNode('metadata', namespace: nameSpace.uri);
    final metadata = readMetadata(metadataNode, version);

    final manifestNode = getNode('manifest', namespace: nameSpace.uri);
    final manifest = EpubManifest.readXml(manifestNode);

    final spineNode = getNode('spine', namespace: nameSpace.uri);
    final spine = EpubSpine.readXml(spineNode);

    final guideNode = getNodeOrNull('guide', namespace: nameSpace.uri);
    final guide = guideNode != null ? EpubGuide.readXML(guideNode) : null;

    final bindingsNode = getNodeOrNull('bindings', namespace: nameSpace.uri);
    final bindings = switch (bindingsNode) {
      null => null,
      _ => bindingsNode.children.whereType<XmlElement>().map(
            (XmlElement bindingNode) => MediaType(
              mediaType: bindingNode.getAttribute('media-type'),
              handler: bindingNode.getAttribute('handler'),
            ),
          ),
    };

    return EpubPackage(
      nameSpace: nameSpace,
      version: version,
      metadata: metadata,
      manifest: manifest,
      spine: spine,
      guide: guide,
      uniqueIdentifier: uniqueIdentifier,
      prefix: prefix,
      xmlLang: xmlLang,
      bindings: bindings?.toList(),
      xmlInfo: XMLInfo.fromXmlDocument(containerDocument),
    );
  }
}
