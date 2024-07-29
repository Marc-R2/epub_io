import 'dart:async';

import 'package:archive/archive.dart';
import 'package:epub_io/src/entities/epub_schema.dart';
import 'package:epub_io/src/readers/navigation_reader.dart';
import 'package:epub_io/src/readers/package_reader.dart';
import 'package:epub_io/src/readers/root_file_path_reader.dart';

class SchemaReader {
  static Future<EpubSchema> readSchema(Archive epubArchive) async {
    final epubContainer = await RootFilePathReader.getContainer(epubArchive);

    final package = await PackageReader.readPackage(epubArchive, epubContainer);

    final navigation = await NavigationReader.readNavigation(
      epubArchive,
      epubContainer,
      package,
    );

    return EpubSchema(
      package: package,
      navigation: navigation,
      epubContainer: epubContainer,
    );
  }
}
