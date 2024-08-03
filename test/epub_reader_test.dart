import 'dart:io' as io;

import 'package:epub_io/epub_io.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  const fileName = 'alicesAdventuresUnderGround.epub';
  final fullPath = path.join(
    io.Directory.current.path,
    'assets',
    fileName,
  );
  final targetFile = io.File(fullPath);

  late EpubBookRef epubRef;

  setUpAll(() async {
    if (!targetFile.existsSync()) {
      throw Exception('Specified epub file not found: $fullPath');
    }

    final bytes = await targetFile.readAsBytes();

    epubRef = await EpubReader.fromBytes(bytes).asRef();
  });

  group('EpubReader', () {
    test('Epub version', () async {
      expect(epubRef.schema?.package?.version, equals(EpubVersion.epub2));
    });

    test('Chapters count', () async {
      final t = epubRef.getChapters();
      expect(t.length, equals(2));
    });

    test('Author and title', () async {
      expect(epubRef.author, equals('Lewis Carroll'));
      expect(
        epubRef.title,
        equals(
          '''Alice's Adventures Under Ground / Being a facsimile of the original Ms. book afterwards developed into "Alice's Adventures in Wonderland"''',
        ),
      );
    });

    test('Cover', () async {
      final cover = await epubRef.readCover();
      expect(cover, isNotNull);
      expect(cover?.width, equals(581));
      expect(cover?.height, equals(1034));
    });
  });
}
