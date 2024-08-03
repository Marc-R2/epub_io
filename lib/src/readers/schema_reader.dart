import 'dart:async';

import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/navigation_reader.dart';
import 'package:epub_io/src/readers/package_reader.dart';
import 'package:epub_io/src/readers/root_file_path_reader.dart';

class SchemaReader {
  static Future<EpubSchema> readSchema(EpubArchive epubArchive) async {
    final epubContainer = await RootFilePathReader.getContainer(epubArchive.archive);

    final package = await PackageReader.readPackage(epubArchive.archive, epubContainer);

    final navigation = await NavigationReader.readNavigation(
      epubArchive.archive,
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
