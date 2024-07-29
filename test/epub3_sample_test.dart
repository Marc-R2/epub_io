import 'dart:io';

import 'package:epub_io/epub_io.dart';
import 'package:test/test.dart';

void main() {
  const source =
      'https://github.com/IDPF/epub3-samples/releases/download/20170606/';
  final dir = Directory('test/res/epub3_sample');

  /// Just delete files to re-download them.
  Future<File> ensureDownloaded(String name) async {
    final file = File.fromUri(dir.uri.resolve(name));
    if (file.existsSync()) return file;
    file.createSync(recursive: true);

    final target = Uri.parse(source).resolve(name);
    print('Downloading $name from $target');

    final client = HttpClient();
    final res = await client.getUrl(target);
    final response = await res.close();

    await response.pipe(file.openWrite());
    return file;
  }

  void testFile(String name) {
    test(name, () async {
      final file = await ensureDownloaded(name);
      expect(file.existsSync(), isTrue);

      final book = await EpubReader.readBookStream(file);
      final written = EpubWriter.writeBook(book);
      final bookRoundTrip = await EpubReader.readBook(Future.value(written));

      expect(bookRoundTrip.hashCode, equals(book.hashCode));
    });
  }

  group('epub3_sample', () {
    testFile('accessible_epub_3.epub');
    testFile('cc-shared-culture.epub');
    testFile('childrens-literature.epub');
    testFile('childrens-media-query.epub');
    testFile('cole-voyage-of-life-tol.epub');
    testFile('cole-voyage-of-life.epub');
    testFile('epub30-spec.epub');
    testFile('figure-gallery-bindings.epub');
    testFile('georgia-cfi.epub');
    testFile('georgia-pls-ssml.epub');
    testFile('GhV-oeb-page.epub');
    testFile('haruko-ahl.epub');
    testFile('haruko-html-jpeg.epub');
    testFile('haruko-jpeg.epub');
    testFile('hefty-water.epub');
    testFile('horizontally-scrollable-emakimono.epub');
    testFile('indexing-for-eds-and-auths-3f.epub');
    testFile('indexing-for-eds-and-auths-3md.epub');
    testFile('internallinks.epub');
    testFile('israelsailing.epub');
    testFile('jlreq-in-english.epub');
    testFile('jlreq-in-japanese.epub');
    testFile('kusamakura-japanese-vertical-writing.epub');
    testFile('kusamakura-preview-embedded.epub');
    testFile('kusamakura-preview.epub');
    testFile('linear-algebra.epub');
    testFile('mahabharata.epub');
    testFile('moby-dick-mo.epub');
    testFile('moby-dick.epub');
    testFile('mymedia_lite.epub');
    testFile('page-blanche-bitmaps-in-spine.epub');
    testFile('page-blanche.epub');
    testFile('quiz-bindings.epub');
    testFile('regime-anticancer-arabic.epub');
    testFile('sous-le-vent.epub');
    testFile('sous-le-vent_svg-in-spine.epub');
    testFile('svg-in-spine.epub');
    testFile('trees.epub');
    testFile('vertically-scrollable-manga.epub');
    testFile('wasteland-otf-obf.epub');
    testFile('wasteland-otf.epub');
    testFile('wasteland-woff-obf.epub');
    testFile('wasteland-woff.epub');
    testFile('wasteland.epub');
    testFile('WCAG.epub');
  });
}
