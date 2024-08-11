import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart' as xml;

/// The `RootFilePathReader` class is responsible for reading and parsing the
/// `META-INF/container.xml` file in an EPUB archive to extract container
/// information and root file paths.
class RootFilePathReader {
  /// Parses the `container.xml` file from the EPUB archive and returns an
  /// `EpubContainer` object containing information about the EPUB container.
  ///
  /// This method reads the container file, extracts the XML data, and
  /// parses it to retrieve attributes such as `xmlns`, `version`, and
  /// root files. It also constructs the `EpubContainer` object with this
  /// information.
  ///
  /// - [epubArchive]: The `EpubArchive` object representing the EPUB file
  ///   from which the container XML is read.
  ///
  /// Returns an `EpubContainer` object with the extracted container data.
  ///
  /// Throws an exception if the container XML is invalid or cannot be parsed.
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
    final rootFileElements = containerElement.children
        .whereType<xml.XmlElement>()
        .where((element) => element.name.local == 'rootfiles');

    for (final rootFileElement in rootFileElements.expand((e) => e.children)) {
      if (rootFileElement is! xml.XmlElement) continue;
      rootFiles.add(EpubContainerRootFile.readXml(rootFileElement));
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
