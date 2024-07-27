library epubreadertest;

import 'dart:io' as io;

import 'package:epub_plus/epub_plus.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  String fileName = "Das Silmarillion.epub";
  String fullPath =
      path.join(io.Directory.current.path, "test", "res", fileName);
  var targetFile = io.File(fullPath);
  if (!targetFile.existsSync()) {
    throw Exception("Specified epub file not found: $fullPath");
  }

  List<int> bytes = targetFile.readAsBytesSync();

  test("Book Round Trip", () async {
    EpubBook book = await EpubReader.readBook(bytes);

    var written = EpubWriter.writeBook(book);
    var bookRoundTrip = await EpubReader.readBook(Future.value(written));

    expect(bookRoundTrip, equals(book));
  });
}
