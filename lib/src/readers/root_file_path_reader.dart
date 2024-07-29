import 'dart:async';
import 'dart:convert' as convert;

import 'package:archive/archive.dart';
import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:xml/xml.dart' as xml;

class RootFilePathReader {
  static Future<EpubContainer> getContainer(Archive epubArchive) async {
    const epubContainerFilePath = 'META-INF/container.xml';

    ArchiveFile? getFileEntry(String path) =>
        epubArchive.files.firstWhereOrNull((file) => file.name == path);

    ArchiveFile getFileEntryOrThrow(String path) =>
        getFileEntry(path) ??
        (throw Exception('EPUB error: $path file not found in archive.'));

    final containerFileEntry = getFileEntryOrThrow(epubContainerFilePath);

    final containerDocument = xml.XmlDocument.parse(
      // TODO(Marc-R2): unknown casting - check if it's correct
      convert.utf8.decode(containerFileEntry.content as List<int>),
    );

    final containerXML = EpubContainerXML(
      xmlVersion: containerDocument.declaration?.version,
      xmlEncoding: containerDocument.declaration?.encoding,
      xmlStandalone: containerDocument.declaration?.standalone,
    );

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
      containerXML: containerXML,
      xmlns: containerElement.getAttribute('xmlns'),
      version: containerElement.getAttribute('version'),
      rootFile: rootFiles.first,
      rootFiles: rootFiles,
    );
  }
}
