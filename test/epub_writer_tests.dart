import 'dart:io' as io;

import 'package:archive/archive.dart';
import 'package:epub_io/epub_io.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

import 'print_objects.dart';

void main() {
  const fileName = 'test/res/lord-byron_don-juan.epub';
  final fullPath = path.join(io.Directory.current.path, fileName);
  final targetFile = io.File(fullPath);
  final resultFile = io.File('$fullPath.zip');
  // final resultFile2 = io.File('$fullPath.epub');
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

  test('Book Round Trip', () async {
    final book = await EpubReader.fromBytes(bytes).readBookFromRef();

    final written = EpubWriter.writeBook(book)!;
    // resultFile.writeAsBytesSync(written!);
    // resultFile2.writeAsBytesSync(written);
    print('Result written to ${resultFile.path}');
    unzip(written);

    final bookRoundTrip = await EpubReader.fromBytes(written).readBookFromRef();

    printHashCodes(book, bookRoundTrip);

    expect(bookRoundTrip.hashCode, equals(book.hashCode));
    // expect(bookRoundTrip, equals(book));
  });
}
