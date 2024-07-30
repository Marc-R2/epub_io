import 'dart:io';

import 'package:epub_io/epub_io.dart';
import 'package:test/test.dart';

import 'print_objects.dart';

class EnsureDownloaded {
  const EnsureDownloaded({required this.dir, required this.source});

  final String source;
  final Directory dir;

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

      printHashCodes(book, bookRoundTrip);

      expect(bookRoundTrip.hashCode, equals(book.hashCode));
    });
  }
}
