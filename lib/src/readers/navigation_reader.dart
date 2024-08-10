import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_list.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_page_list.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_page_target.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_page_target_type.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_target.dart';
import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:path/path.dart' as path;
import 'package:xml/xml.dart' as xml;

mixin NavigationReader implements EpubArchiveReader {
  String? _tocFileEntryPath;

  Future<EpubNavigation> readNavigation(
    EpubContainer epubContainer,
    EpubPackage package,
  ) async {
    switch (package.version) {
      case EpubVersion.epub2:
        return readNavigationV2(epubContainer, package);
      case EpubVersion.epub3:
        return readNavigationV3(epubContainer, package);
      case null:
        throw Exception('Unknown EPUB version.');
    }
  }

  Future<EpubNavigation> readNavigationV2(
    EpubContainer epubContainer,
    EpubPackage package,
  ) async {
    final tocId = package.spine?.tableOfContents;
    if (tocId == null || tocId.isEmpty) {
      throw Exception('EPUB parsing error: TOC ID is empty.');
    }

    final tocManifestItem = package.manifest?.getItemById(tocId);

    if (tocManifestItem == null) {
      throw Exception(
        'EPUB parsing error: TOC item $tocId not found in EPUB manifest.',
      );
    }

    _tocFileEntryPath = ZipPathUtils.combine(
      epubContainer.contentDirectoryPath,
      tocManifestItem.href,
    );
    final tocFileEntry = epubArchive.getFile(EpubUri.parse(_tocFileEntryPath!));

    final containerDocument = xml.XmlDocument.parse(tocFileEntry.contentUtf8);

    const ncxNamespace = 'http://www.daisy.org/z3986/2005/ncx/';
    final ncxNode = containerDocument
        .findAllElements('ncx', namespace: ncxNamespace)
        .firstOrNull;

    if (ncxNode == null) {
      throw Exception(
        'EPUB parsing error: TOC file does not contain ncx element.',
      );
    }

    final headNode =
        ncxNode.findAllElements('head', namespace: ncxNamespace).firstOrNull;

    if (headNode == null) {
      throw Exception(
        'EPUB parsing error: TOC file does not contain head element.',
      );
    }

    final navigationHead = readNavigationHead(headNode);

    final docTitleNode =
        ncxNode.findElements('docTitle', namespace: ncxNamespace).firstOrNull;

    if (docTitleNode == null) {
      throw Exception(
        'EPUB parsing error: TOC file does not contain docTitle element.',
      );
    }

    final navigationDocTitle = readNavigationDocTitle(docTitleNode);
    final docAuthors = ncxNode
        .findElements('docAuthor', namespace: ncxNamespace)
        .map<EpubNavigationDocAuthor>(readNavigationDocAuthor)
        .toList();

    final navMapNode =
        ncxNode.findElements('navMap', namespace: ncxNamespace).firstOrNull;
    if (navMapNode == null) {
      throw Exception(
        'EPUB parsing error: TOC file does not contain navMap element.',
      );
    }

    final navMap = readNavigationMap(navMapNode);
    final pageListNode =
        ncxNode.findElements('pageList', namespace: ncxNamespace).firstOrNull;
    final pageList = switch (pageListNode) {
      final xml.XmlElement element => readNavigationPageList(element),
      null => null,
    };

    final navLists = ncxNode
        .findElements('navList', namespace: ncxNamespace)
        .map<EpubNavigationList>(readNavigationList)
        .toList();

    return EpubNavigation(
      head: navigationHead,
      docTitle: navigationDocTitle,
      docAuthors: docAuthors,
      navMap: navMap,
      pageList: pageList,
      navLists: navLists,
    );
  }

  Future<EpubNavigation> readNavigationV3(
    EpubContainer epubContainer,
    EpubPackage package,
  ) async {
    final tocManifestItem = package.manifest?.getItemByProperty('nav');
    if (tocManifestItem == null) {
      throw Exception(
        'EPUB parsing error: TOC item, not found in EPUB manifest.',
      );
    }

    _tocFileEntryPath = ZipPathUtils.combine(
      epubContainer.contentDirectoryPath,
      tocManifestItem.href,
    );

    final tocFileEntry = epubArchive.getFile(EpubUri.parse(_tocFileEntryPath!));

    //Get relative toc file path
    _tocFileEntryPath =
        '${((_tocFileEntryPath!.split('/')..removeLast())..removeAt(0)).join('/')}/';

    final containerDocument = xml.XmlDocument.parse(tocFileEntry.contentUtf8);

    final headNode = containerDocument.findAllElements('head').firstOrNull;
    if (headNode == null) {
      throw Exception(
        'EPUB parsing error: TOC file does not contain head element.',
      );
    }

    final titles = package.metadata!.titles;
    final docTitle = EpubNavigationDocTitle(titles: titles);

    final navNode = containerDocument.findAllElements('nav').firstOrNull;
    if (navNode == null) {
      throw Exception(
        'EPUB parsing error: TOC file does not contain head element.',
      );
    }
    final navMapNode = navNode.findElements('ol').single;

    final navMap = readNavigationMapV3(navMapNode);

    //TODO : Implement pagesLists
//      xml.XmlElement pageListNode = ncxNode
//          .findElements("pageList", namespace: ncxNamespace)
//          .firstWhere((xml.XmlElement elem) => elem != null,
//          orElse: () => null);
//      if (pageListNode != null) {
//        EpubNavigationPageList pageList = readNavigationPageList(pageListNode);
//        result.PageList = pageList;
//      }
    return EpubNavigation(
      docTitle: docTitle,
      navMap: navMap,
    );
  }

  static EpubNavigationContent readNavigationContent(
    xml.XmlElement navigationContentNode,
  ) {
    String? id;
    String? source;

    for (final attribute in navigationContentNode.attributes) {
      final attributeValue = attribute.value;
      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'src':
          source = attributeValue;
      }
    }
    if (source == null || source.isEmpty) {
      throw Exception(
        'Incorrect EPUB navigation content: content source is missing.',
      );
    }

    return EpubNavigationContent(
      id: id,
      source: source,
    );
  }

  EpubNavigationContent readNavigationContentV3(
    xml.XmlElement navigationContentNode,
  ) {
    String? id;
    String? source;

    for (final attribute in navigationContentNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'href':
          if (_tocFileEntryPath!.length < 2 ||
              attributeValue.startsWith(_tocFileEntryPath!)) {
            source = attributeValue;
          } else {
            source = path.normalize(_tocFileEntryPath! + attributeValue);
          }
      }
    }
    // element with span, the content will be null;
    // if (result.Source == null || result.Source!.isEmpty) {
    //   throw Exception(
    //       'Incorrect EPUB navigation content: content source is missing.');
    // }
    return EpubNavigationContent(
      id: id,
      source: source,
    );
  }

  static String extractContentPath(String tocFileEntryPath, String ref) {
    if (!tocFileEntryPath.endsWith('/')) {
      tocFileEntryPath = '$tocFileEntryPath/';
    }
    var r = tocFileEntryPath + ref;
    r = r.replaceAll('/./', '/');
    r = r.replaceAll(RegExp(r'/[^/]+/\.\./'), '/');
    r = r.replaceAll(RegExp(r'^[^/]+/\.\./'), '');
    return r;
  }

  static EpubNavigationDocAuthor readNavigationDocAuthor(
    xml.XmlElement docAuthorNode,
  ) {
    final authors = <String>[];
    docAuthorNode.children.whereType<xml.XmlElement>().forEach(
      (xml.XmlElement textNode) {
        if (textNode.name.local.toLowerCase() == 'text') {
          authors.add(textNode.innerText);
        }
      },
    );
    return EpubNavigationDocAuthor(authors: authors);
  }

  static EpubNavigationDocTitle readNavigationDocTitle(
    xml.XmlElement docTitleNode,
  ) {
    final titles = <String>[];
    docTitleNode.children.whereType<xml.XmlElement>().forEach(
      (xml.XmlElement textNode) {
        if (textNode.name.local.toLowerCase() == 'text') {
          titles.add(textNode.innerText);
        }
      },
    );
    return EpubNavigationDocTitle(titles: titles);
  }

  static EpubNavigationHead readNavigationHead(xml.XmlElement headNode) {
    final metadata = <EpubNavigationHeadMeta>[];

    headNode.children.whereType<xml.XmlElement>().forEach(
      (xml.XmlElement metaNode) {
        if (metaNode.name.local.toLowerCase() == 'meta') {
          String? name;
          String? content;
          String? scheme;

          for (final metaNodeAttribute in metaNode.attributes) {
            final attributeValue = metaNodeAttribute.value;

            switch (metaNodeAttribute.name.local.toLowerCase()) {
              case 'name':
                name = attributeValue;
              case 'content':
                content = attributeValue;
              case 'scheme':
                scheme = attributeValue;
            }
          }

          if (name == null || name.isEmpty) {
            throw Exception(
              'Incorrect EPUB navigation meta: meta name is missing.',
            );
          }
          if (content == null) {
            throw Exception(
              'Incorrect EPUB navigation meta: meta content is missing.',
            );
          }

          final meta = EpubNavigationHeadMeta(
            name: name,
            content: content,
            scheme: scheme,
          );

          metadata.add(meta);
        }
      },
    );
    return EpubNavigationHead(metadata: metadata);
  }

  static EpubNavigationLabel readNavigationLabel(
    xml.XmlElement navigationLabelNode,
  ) {
    final navigationLabelTextNode = navigationLabelNode
        .findElements('text', namespace: navigationLabelNode.name.namespaceUri)
        .firstWhereOrNull((xml.XmlElement? elem) => elem != null);
    if (navigationLabelTextNode == null) {
      throw Exception(
        'Incorrect EPUB navigation label: label text element is missing.',
      );
    }

    final text = navigationLabelTextNode.innerText;

    return EpubNavigationLabel(text: text);
  }

  static EpubNavigationLabel readNavigationLabelV3(
    xml.XmlElement navigationLabelNode,
  ) {
    final text = navigationLabelNode.innerText.trim();
    return EpubNavigationLabel(text: text);
  }

  static EpubNavigationList readNavigationList(
    xml.XmlElement navigationListNode,
  ) {
    String? id;
    String? classs;

    for (final attribute in navigationListNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'class':
          classs = attributeValue;
      }
    }

    final navigationLabels = <EpubNavigationLabel>[];
    final navigationTargets = <EpubNavigationTarget>[];
    for (final node
        in navigationListNode.children.whereType<xml.XmlElement>()) {
      switch (node.name.local.toLowerCase()) {
        case 'navlabel':
          final navigationLabel = readNavigationLabel(node);
          navigationLabels.add(navigationLabel);
        case 'navtarget':
          final navigationTarget = readNavigationTarget(node);
          navigationTargets.add(navigationTarget);
      }
    }

    // if (result.NavigationLabels!.isEmpty) {
    //   throw Exception(
    //       'Incorrect EPUB navigation page target: at least one navLabel element is required.');
    // }
    return EpubNavigationList(
      id: id,
      classs: classs,
      navigationLabels: navigationLabels,
      navigationTargets: navigationTargets,
    );
  }

  static EpubNavigationMap readNavigationMap(xml.XmlElement navigationMapNode) {
    final points = <EpubNavigationPoint>[];

    navigationMapNode.children
        .whereType<xml.XmlElement>()
        .forEach((xml.XmlElement navigationPointNode) {
      if (navigationPointNode.name.local.toLowerCase() == 'navpoint') {
        final navigationPoint = readNavigationPoint(navigationPointNode);
        points.add(navigationPoint);
      }
    });
    return EpubNavigationMap(points: points);
  }

  EpubNavigationMap readNavigationMapV3(
    xml.XmlElement navigationMapNode,
  ) {
    final points = <EpubNavigationPoint>[];

    navigationMapNode.children
        .whereType<xml.XmlElement>()
        .forEach((xml.XmlElement navigationPointNode) {
      if (navigationPointNode.name.local.toLowerCase() == 'li') {
        final navigationPoint = readNavigationPointV3(navigationPointNode);
        points.add(navigationPoint);
      }
    });
    return EpubNavigationMap(points: points);
  }

  static EpubNavigationPageList readNavigationPageList(
    xml.XmlElement navigationPageListNode,
  ) {
    final targets = <EpubNavigationPageTarget>[];

    for (final node
        in navigationPageListNode.children.whereType<xml.XmlElement>()) {
      if (node.name.local.toLowerCase() == 'pagetarget') {
        final pageTarget = readNavigationPageTarget(node);
        targets.add(pageTarget);
      }
    }

    return EpubNavigationPageList(targets: targets);
  }

  static EpubNavigationPageTarget readNavigationPageTarget(
    xml.XmlElement navigationPageTargetNode,
  ) {
    String? id;
    String? value;
    String? classs;
    String? playOrder;

    late final EpubNavigationPageTargetType type;

    for (final attribute in navigationPageTargetNode.attributes) {
      final attributeValue = attribute.value;
      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'value':
          value = attributeValue;
        case 'type':
          type = EpubNavigationPageTargetType.fromValue(attributeValue);
        case 'class':
          classs = attributeValue;
        case 'playorder':
          playOrder = attributeValue;
      }
    }
    final navigationLabels = <EpubNavigationLabel>[];

    EpubNavigationContent? content;

    navigationPageTargetNode.children
        .whereType<xml.XmlElement>()
        .forEach((xml.XmlElement navigationPageTargetChildNode) {
      switch (navigationPageTargetChildNode.name.local.toLowerCase()) {
        case 'navlabel':
          final navigationLabel =
              readNavigationLabel(navigationPageTargetChildNode);
          navigationLabels.add(navigationLabel);
        case 'content':
          content = readNavigationContent(navigationPageTargetChildNode);
      }
    });
    if (navigationLabels.isEmpty) {
      throw Exception(
        'Incorrect EPUB navigation page target: at least one navLabel element is required.',
      );
    }

    return EpubNavigationPageTarget(
      id: id,
      value: value,
      type: type,
      classs: classs,
      playOrder: playOrder,
      navigationLabels: navigationLabels,
      content: content,
    );
  }

  static EpubNavigationPoint readNavigationPoint(
    xml.XmlElement navigationPointNode,
  ) {
    String? id;
    String? classs;
    String? playOrder;
    for (final attribute in navigationPointNode.attributes) {
      final attributeValue = attribute.value;
      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'class':
          classs = attributeValue;
        case 'playorder':
          playOrder = attributeValue;
      }
    }
    if (id == null || id.isEmpty) {
      throw Exception('Incorrect EPUB navigation point: point ID is missing.');
    }
    EpubNavigationContent? content;

    final navigationLabels = <EpubNavigationLabel>[];
    final childNavigationPoints = <EpubNavigationPoint>[];
    navigationPointNode.children.whereType<xml.XmlElement>().forEach(
      (xml.XmlElement navigationPointChildNode) {
        switch (navigationPointChildNode.name.local.toLowerCase()) {
          case 'navlabel':
            final navigationLabel =
                readNavigationLabel(navigationPointChildNode);
            navigationLabels.add(navigationLabel);
          case 'content':
            final navContent = readNavigationContent(navigationPointChildNode);
            content = navContent;
          case 'navpoint':
            final childNavigationPoint =
                readNavigationPoint(navigationPointChildNode);
            childNavigationPoints.add(childNavigationPoint);
        }
      },
    );

    if (navigationLabels.isEmpty) {
      throw Exception(
        'EPUB parsing error: navigation point $id should contain at least one navigation label.',
      );
    }
    if (content == null) {
      throw Exception(
        'EPUB parsing error: navigation point $id should contain content.',
      );
    }

    return EpubNavigationPoint(
      id: id,
      classs: classs,
      playOrder: playOrder,
      navigationLabels: navigationLabels,
      content: content!,
      childNavigationPoints: childNavigationPoints,
    );
  }

  EpubNavigationPoint readNavigationPointV3(
    xml.XmlElement navigationPointNode,
  ) {
    String? id;
    String? classs;
    String? playOrder;

    EpubNavigationContent? content;

    final navigationLabels = <EpubNavigationLabel>[];
    final childNavigationPoints = <EpubNavigationPoint>[];
    navigationPointNode.children.whereType<xml.XmlElement>().forEach(
      (xml.XmlElement navigationPointChildNode) {
        switch (navigationPointChildNode.name.local.toLowerCase()) {
          case 'a':
          case 'span':
            final label = readNavigationLabelV3(navigationPointChildNode);
            navigationLabels.add(label);
            final navContent =
                readNavigationContentV3(navigationPointChildNode);
            content = navContent;
          case 'ol':
            for (final point
                in readNavigationMapV3(navigationPointChildNode).points) {
              childNavigationPoints.add(point);
            }
        }
      },
    );

    if (navigationLabels.isEmpty) {
      throw Exception(
        'EPUB parsing error: navigation point $id should contain at least one navigation label.',
      );
    }
    if (content == null) {
      throw Exception(
        'EPUB parsing error: navigation point $id should contain content.',
      );
    }

    return EpubNavigationPoint(
      id: id,
      classs: classs,
      playOrder: playOrder,
      navigationLabels: navigationLabels,
      content: content!,
      childNavigationPoints: childNavigationPoints,
    );
  }

  static EpubNavigationTarget readNavigationTarget(
    xml.XmlElement navigationTargetNode,
  ) {
    String? id;
    String? classs;
    String? value;
    String? playOrder;

    for (final attribute in navigationTargetNode.attributes) {
      final attributeValue = attribute.value;

      switch (attribute.name.local.toLowerCase()) {
        case 'id':
          id = attributeValue;
        case 'value':
          value = attributeValue;
        case 'class':
          classs = attributeValue;
        case 'playorder':
          playOrder = attributeValue;
      }
    }
    if (id == null || id.isEmpty) {
      throw Exception(
        'Incorrect EPUB navigation target: navigation target ID is missing.',
      );
    }

    final navigationLabels = <EpubNavigationLabel>[];

    EpubNavigationContent? content;

    navigationTargetNode.children.whereType<xml.XmlElement>().forEach(
      (xml.XmlElement navigationTargetChildNode) {
        switch (navigationTargetChildNode.name.local.toLowerCase()) {
          case 'navlabel':
            final label = readNavigationLabel(navigationTargetChildNode);
            navigationLabels.add(label);
          case 'content':
            final navContent = readNavigationContent(navigationTargetChildNode);
            content = navContent;
        }
      },
    );
    if (navigationLabels.isEmpty) {
      throw Exception(
        'Incorrect EPUB navigation target: at least one navLabel element is required.',
      );
    }

    return EpubNavigationTarget(
      id: id,
      classs: classs,
      value: value,
      playOrder: playOrder,
      navigationLabels: navigationLabels,
      content: content,
    );
  }
}
