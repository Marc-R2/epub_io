import 'dart:async';

import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/lazy_object.dart';
import 'package:epub_io/src/readers/navigation_reader.dart';
import 'package:epub_io/src/readers/package_reader.dart';
import 'package:epub_io/src/readers/root_file_path_reader.dart';

mixin SchemaReader implements EpubArchiveReader, NavigationReader {
  late final _schema = LazyObject(readSchema);

  Future<EpubSchema> get schema async => _schema.value;

  Future<EpubSchema> readSchema() async {
    final epubContainer = await RootFilePathReader.getContainer(epubArchive);

    final package =
        await PackageReader.readPackage(epubArchive.archive, epubContainer);

    return EpubSchema(
      package: package,
      navigation: await readNavigation(epubContainer, package),
      epubContainer: epubContainer,
    );
  }
}
