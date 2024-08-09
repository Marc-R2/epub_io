import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_contributor.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_date.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_identifier.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';
import 'package:xml/xml.dart';

class PackageReader {
  static EpubGuide readGuide(XmlElement guideNode) {
    final items = <EpubGuideReference>[];

    guideNode.children.whereType<XmlElement>().forEach(
      (XmlElement guideReferenceNode) {
        if (guideReferenceNode.name.local.toLowerCase() == 'reference') {
          String? type;
          String? title;
          String? href;

          for (final attribute in guideReferenceNode.attributes) {
            final attributeValue = attribute.value;

            switch (attribute.name.local.toLowerCase()) {
              case 'type':
                type = attributeValue;
              case 'title':
                title = attributeValue;
              case 'href':
                href = attributeValue;
            }
          }
          if (type == null || type.isEmpty) {
            throw Exception('Incorrect EPUB guide: item type is missing');
          }
          if (href == null || href.isEmpty) {
            throw Exception('Incorrect EPUB guide: item href is missing');
          }

          final guideReference = EpubGuideReference(
            type: type,
            title: title,
            href: href,
          );

          items.add(guideReference);
        }
      },
    );
    return EpubGuide(items: items);
  }

  static EpubManifest readManifest(XmlElement manifestNode) {
    final items = <EpubManifestItem>[];

    final children = manifestNode.children.whereType<XmlElement>();
    for (final manifestItemNode in children) {
      if (manifestItemNode.name.local.toLowerCase() != 'item') continue;
      var item = const EpubManifestItem();
      for (final manifestItemNodeAttribute in manifestItemNode.attributes) {
        final attributeValue = manifestItemNodeAttribute.value;
        item = switch (manifestItemNodeAttribute.name.local.toLowerCase()) {
          'id' => item.copyWith(id: attributeValue),
          'href' => item.copyWith(href: attributeValue),
          'media-type' => item.copyWith(mediaType: attributeValue),
          'media-overlay' => item.copyWith(mediaOverlay: attributeValue),
          'required-namespace' =>
            item.copyWith(requiredNamespace: attributeValue),
          'required-modules' => item.copyWith(requiredModules: attributeValue),
          'fallback' => item.copyWith(fallback: attributeValue),
          'fallback-style' => item.copyWith(fallbackStyle: attributeValue),
          'properties' =>
            item.copyWith(properties: attributeValue.split(' ').toSet()),
          _ => item,
        };
      }

      if (item.id == null || item.id!.isEmpty) {
        throw Exception('Incorrect EPUB manifest: item ID is missing');
      }
      if (item.href == null || item.href!.isEmpty) {
        throw Exception('Incorrect EPUB manifest: item href is missing');
      }
      if (item.mediaType == null || item.mediaType!.isEmpty) {
        throw Exception('Incorrect EPUB manifest: item media type is missing');
      }

      items.add(item);
    }
    return EpubManifest(items: items);
  }

  static Link readMetadataLink(XmlElement manifestNode) {
    final href = manifestNode.getAttribute('href');
    final rel = manifestNode.getAttribute('rel');
    final refines = manifestNode.getAttribute('refines');

    return Link(href: href!, rel: rel, refines: refines);
  }

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
          'creator' => creators.add(readMetadataCreator(metadataItemNode)),
          'subject' => subjects.add(innerText),
          'description' => description = innerText,
          'publisher' => publishers.add(innerText),
          'contributor' =>
            contributors.add(readMetadataContributor(metadataItemNode)),
          'date' => dates.add(readMetadataDate(metadataItemNode)),
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

  static EpubMetadataContributor readMetadataContributor(
    XmlElement metadataContributorNode,
  ) {
    String? contributor;
    String? role;
    String? fileAs;

    for (final attribute in metadataContributorNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'role':
          role = attributeValue;
        case 'file-as':
          fileAs = attributeValue;
      }
    }
    contributor = metadataContributorNode.innerText;

    return EpubMetadataContributor(
      contributor: contributor,
      role: role,
      fileAs: fileAs,
    );
  }

  static EpubMetadataCreator readMetadataCreator(
    XmlElement metadataCreatorNode,
  ) {
    String? creator;
    String? role;
    String? fileAs;

    for (final attribute in metadataCreatorNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'role':
          role = attributeValue;
        case 'file-as':
          fileAs = attributeValue;
      }
    }
    creator = metadataCreatorNode.innerText;

    return EpubMetadataCreator(
      creator: creator,
      role: role,
      fileAs: fileAs,
    );
  }

  static EpubMetadataDate readMetadataDate(XmlElement metadataDateNode) {
    String? event;
    String? date;

    final eventAttribute = metadataDateNode.getAttribute(
      'event',
      namespace: metadataDateNode.name.namespaceUri,
    );
    if (eventAttribute != null && eventAttribute.isNotEmpty) {
      event = eventAttribute;
    }
    date = metadataDateNode.innerText;

    return EpubMetadataDate(
      date: date,
      event: event,
    );
  }

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
    final manifest = readManifest(manifestNode);

    final spineNode = getNode('spine', namespace: nameSpace.uri);
    final spine = readSpine(spineNode);

    final guideNode = getNodeOrNull('guide', namespace: nameSpace.uri);
    final guide = guideNode != null ? readGuide(guideNode) : null;

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

  static EpubSpine readSpine(XmlElement spineNode) {
    final items = <EpubSpineItemRef>[];
    final tableOfContents = spineNode.getAttribute('toc');

    final pageProgression =
        spineNode.getAttribute('page-progression-direction');
    final ltr =
        (pageProgression == null) || pageProgression.toLowerCase() == 'ltr';

    spineNode.children.whereType<XmlElement>().forEach(
      (XmlElement spineItemNode) {
        if (spineItemNode.name.local.toLowerCase() == 'itemref') {
          final idRef = spineItemNode.getAttribute('idref');
          if (idRef == null || idRef.isEmpty) {
            throw Exception('Incorrect EPUB spine: item ID ref is missing');
          }

          final linearAttribute = spineItemNode.getAttribute('linear');

          bool? isLinear;
          if (linearAttribute != null) {
            isLinear = linearAttribute.toLowerCase() == 'yes';
          }

          final spineItemRef = EpubSpineItemRef(
            idRef: idRef,
            isLinear: isLinear,
            properties: spineItemNode.getAttribute('properties'),
          );
          items.add(spineItemRef);
        }
      },
    );
    return EpubSpine(
      items: items,
      tableOfContents: tableOfContents,
      ltr: ltr,
    );
  }
}
