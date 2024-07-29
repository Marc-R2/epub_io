import 'dart:io' as io;

import 'package:archive/archive.dart';
import 'package:epub_io/epub_io.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  const fileName = 'Das Silmarillion.epub';
  final fullPath =
      path.join(io.Directory.current.path, 'test', 'res', fileName);
  final targetFile = io.File(fullPath);
  final resultFile = io.File('$fullPath.zip');
  final resultFile2 = io.File('$fullPath.epub');
  if (!targetFile.existsSync()) {
    throw Exception('Specified epub file not found: $fullPath');
  }

  final List<int> bytes = targetFile.readAsBytesSync();

  void unzip(List<int> written) {
    final resultDir = io.Directory('$fullPath.dir');
    if (resultDir.existsSync()) {
      resultDir.deleteSync(recursive: true);
    }
    resultDir.createSync();
    final resultArchive = ZipDecoder().decodeBytes(written);
    for (final zipFile in resultArchive) {
      io.File(path.join(resultDir.path, zipFile.name))
        ..createSync(recursive: true)
        ..writeAsBytesSync(zipFile.content as List<int>);
    }
  }

  void printHashCodes(EpubBook book, EpubBook bookRoundTrip) {
    void line(
      String key,
      Object? Function(EpubBook) f, {
      bool showObj = false,
    }) {
      final b1 = f(book);
      final b2 = f(bookRoundTrip);
      final show = showObj ? ' $b1 $b2' : '';
      print('$key: ${b1.hashCode} ${b2.hashCode}$show');
    }

    line('.', (b) => b);
    // Done line('Title', (b) => b.title);
    // Done line('Author', (b) => b.author);
    // line('Authors', (b) => b.authors, showObj: true);
    // line('Authors.first', (b) => b.authors.first, showObj: true);
    line('Schema', (b) => b.schema);
    line('Schema.package', (b) => b.schema?.package);
    // E line('Schema.package.version', (b) => b.schema?.package?.version);
    line('Schema.package.metadata', (b) => b.schema?.package?.metadata);
    // E line('Schema.package.metadata.titles', (b) => b.schema?.package?.metadata?.titles.toString());
    // E line('Schema.package.metadata.creators', (b) => b.schema?.package?.metadata?.creators.toString());
    // E line('Schema.package.metadata.subjects', (b) => b.schema?.package?.metadata?.subjects.toString());
    // E line('Schema.package.metadata.description', (b) => b.schema?.package?.metadata?.description);
    // E line('Schema.package.metadata.publishers', (b) => b.schema?.package?.metadata?.publishers.toString());
    // E line('Schema.package.metadata.dates', (b) => b.schema?.package?.metadata?.dates.toString());
    // E line('Schema.package.metadata.types', (b) => b.schema?.package?.metadata?.types.toString());
    // E line('Schema.package.metadata.formats', (b) => b.schema?.package?.metadata?.formats.toString());
    // E line('Schema.package.metadata.identifiers', (b) => b.schema?.package?.metadata?.identifiers.toString());
    // E line('Schema.package.metadata.sources', (b) => b.schema?.package?.metadata?.sources.toString());
    // E line('Schema.package.metadata.languages', (b) => b.schema?.package?.metadata?.languages.toString());
    // E line('Schema.package.metadata.relations', (b) => b.schema?.package?.metadata?.relations.toString());
    // E line('Schema.package.metadata.coverages', (b) => b.schema?.package?.metadata?.coverages.toString());
    line('Schema.package.metadata.rights',
        (b) => b.schema?.package?.metadata?.rights,
        showObj: true);
    // E line('Schema.package.metadata.metaItems', (b) => b.schema?.package?.metadata?.metaItems.toString());
    // E line('Schema.package.manifest', (b) => b.schema?.package?.manifest);
    // E line('Schema.package.spine', (b) => b.schema?.package?.spine);
    // Done line('Schema.package.spine.ltr', (b) => b.schema?.package?.spine?.ltr);
    // Done line('Schema.package.spine.tableOfContents', (b) => b.schema?.package?.spine?.tableOfContents);
    // D line('Schema.package.spine.items', (b) => b.schema?.package?.spine?.items);
    // D line('Schema.package.spine.items.length', (b) => b.schema?.package?.spine?.items.length, showObj: true);
    for (var i = 0; i < 48; i++) {
      // D line('Schema.package.spine.items.$i', (b) => b.schema?.package?.spine?.items.elementAt(i), showObj: true);
      // print(''); // empty line
      // print(''); // empty line
    }
    // E line('Schema.package.guide', (b) => b.schema?.package?.guide);
    // E line('Schema.navigation', (b) => b.schema?.navigation);
    // Done line('Schema.contentDirectoryPath', (b) => b.schema?.contentDirectoryPath);
    // Done line('Content', (b) => b.content);
    // line('CoverImage', (b) => b.coverImage);
    // line('Chapters', (b) => b.chapters);
  }

  test('Book Round Trip', () async {
    final book = await EpubReader.readBook(bytes);

    final written = EpubWriter.writeBook(book);
    resultFile.writeAsBytesSync(written!);
    resultFile2.writeAsBytesSync(written);
    print('Result written to ${resultFile.path}');
    unzip(written);

    final bookRoundTrip = await EpubReader.readBook(Future.value(written));

    printHashCodes(book, bookRoundTrip);

    expect(bookRoundTrip.hashCode, equals(book.hashCode));
    // expect(bookRoundTrip, equals(book));
  });
}
