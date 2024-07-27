import 'dart:io' as io;

import 'package:epub_io/epub_io.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  const fileName = 'Das Silmarillion.epub';
  final fullPath =
      path.join(io.Directory.current.path, 'test', 'res', fileName);
  final targetFile = io.File(fullPath);
  if (!targetFile.existsSync()) {
    throw Exception('Specified epub file not found: $fullPath');
  }

  final List<int> bytes = targetFile.readAsBytesSync();

  test('Book Round Trip', () async {
    final book = await EpubReader.readBook(bytes);

    final written = EpubWriter.writeBook(book);
    final bookRoundTrip = await EpubReader.readBook(Future.value(written));

    expect(bookRoundTrip, equals(book));
  });
}
