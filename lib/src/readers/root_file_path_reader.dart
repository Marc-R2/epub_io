import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:xml/xml.dart' as xml;

class RootFilePathReader {
  static Future<EpubContainer> getContainer(EpubArchive epubArchive) async {
    final epubContainerFilePath = EpubUri.parse('META-INF/container.xml');

    final containerFileEntry = epubArchive.getFile(epubContainerFilePath);

    final containerDocument =
        xml.XmlDocument.parse(containerFileEntry.contentUtf8);

    final containerElement = containerDocument
        .findElements('container')
        .firstWhereOrNull((xml.XmlElement? elem) => elem != null);
    if (containerElement == null) {
      throw Exception('EPUB parsing error: Invalid epub container');
    }

    final rootFiles = <EpubContainerRootFile>[];
    final rootFileElements =
        containerElement.children.whereType<xml.XmlElement>().where(
              (element) => element.name.local == 'rootfiles',
            );

    for (final rootFileElement in rootFileElements.expand((e) => e.children)) {
      if (rootFileElement is! xml.XmlElement) continue;
      final rootFile = EpubContainerRootFile(
        fullPath: rootFileElement.getAttribute('full-path')!,
        mediaType: rootFileElement.getAttribute('media-type'),
      );
      rootFiles.add(rootFile);
    }

    return EpubContainer(
      xmlInfo: XMLInfo.fromXmlDocument(containerDocument),
      xmlns: containerElement.getAttribute('xmlns'),
      version: containerElement.getAttribute('version'),
      rootFile: rootFiles.first,
      rootFiles: rootFiles,
    );
  }
}
