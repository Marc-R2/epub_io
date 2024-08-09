import 'dart:async';

import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/lazy_object.dart';
import 'package:epub_io/src/readers/navigation_reader.dart';
import 'package:epub_io/src/readers/package_reader.dart';
import 'package:epub_io/src/readers/root_file_path_reader.dart';

/// The [SchemaReader] mixin provides methods to read and parse the EPUB schema,
/// including the package, navigation, and container information.
mixin SchemaReader implements EpubArchiveReader, NavigationReader {
  /// A lazily-initialized [_schema] object,
  /// which holds the result of the [readSchema] method.
  late final _schema = LazyObject(readSchema);

  /// An asynchronous getter for the EPUB [EpubSchema].
  ///
  /// Returns the parsed [EpubSchema] object,
  /// which contains package, navigation, and container information.
  Future<EpubSchema> get schema async => _schema.value;

  /// Reads and parses the EPUB schema, including the package, navigation,
  /// and container information.
  ///
  /// This method retrieves the EPUB container using the [RootFilePathReader],
  /// then reads the package using the [PackageReader], and finally combines
  /// these with the navigation data to create an [EpubSchema] object.
  ///
  /// Returns an [EpubSchema] object containing the package,
  /// navigation, and container data.
  Future<EpubSchema> readSchema() async {
    final epubContainer = await RootFilePathReader.getContainer(epubArchive);

    final package = await PackageReader.readPackage(epubArchive, epubContainer);

    return EpubSchema(
      package: package,
      navigation: await readNavigation(epubContainer, package),
      epubContainer: epubContainer,
    );
  }
}
