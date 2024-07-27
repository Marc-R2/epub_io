import 'dart:io' as io;

import 'package:epub_io/epub_io.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  const fileName = 'MY VAMPIRE SYSTEM (JKSManga) (Z-Library).epub';
  final fullPath =
      path.join(io.Directory.current.path, 'test', 'res', fileName);
  final targetFile = io.File(fullPath);
  if (!targetFile.existsSync()) {
    throw Exception('Specified epub file not found: $fullPath');
  }
  final List<int> bytes = targetFile.readAsBytesSync();
  test('Test Epub Image', () async {
    final epubRef = await EpubReader.readBook(bytes);

    expect(epubRef.coverImage, isNotNull);

    // expect(3, epubRef.CoverImage.format);
    // expect(581, epubRef.CoverImage.width);
    // expect(1034, epubRef.CoverImage.height);
  });

  test('Test Epub Ref Image', () async {
    final epubRef = await EpubReader.openBook(bytes);

    final coverImage = await epubRef.readCover();

    expect(coverImage, isNotNull);

    // expect(3, coverImage.format);
    // expect(581, coverImage.width);
    // expect(1034, coverImage.height);
  });
}
