import 'dart:io';

import 'package:test/test.dart';

import 'ensure_downloaded.dart';

// https://epubtest.org/test-books

void main() {
  final download = EnsureDownloaded(
    dir: Directory('test/res/epubtest_org'),
    source:
        'https://github.com/daisy/epub-accessibility-tests/releases/download/',
  );

  group('epubtest_org', () {
    download
      // https://github.com/daisy/epub-accessibility-tests/releases/download/fundamental-2.0/Fundamental-Accessibility-Tests-Basic-Functionality-v2.0.0.epub
      ..testFile(
        'fundamental-2.0/Fundamental-Accessibility-Tests-Basic-Functionality-v2.0.0.epub',
      )
      // https://github.com/daisy/epub-accessibility-tests/releases/download/fundamental-2.0/Fundamental-Accessibility-Tests-Non-Visual-Reading-v2.0.0.epub
      ..testFile(
        'fundamental-2.0/Fundamental-Accessibility-Tests-Non-Visual-Reading-v2.0.0.epub',
      )
      // https://github.com/daisy/epub-accessibility-tests/releases/download/fundamental-2.0/Fundamental-Accessibility-Tests-Visual-Adjustments-v2.0.0.epub
      ..testFile(
        'fundamental-2.0/Fundamental-Accessibility-Tests-Visual-Adjustments-v2.0.0.epub',
      )
      // https://github.com/daisy/epub-accessibility-tests/releases/download/fundamental-2.0/Fundamental-Accessibility-Tests-Read-Aloud-v2.0.0.epub
      ..testFile(
        'fundamental-2.0/Fundamental-Accessibility-Tests-Read-Aloud-v2.0.0.epub',
      )
      // https://github.com/daisy/epub-accessibility-tests/releases/download/media-overlays-1.0/Advanced-Accessibility-Tests-Media-Overlays-v1.0.0.epub
      ..testFile(
        'media-overlays-1.0/Advanced-Accessibility-Tests-Media-Overlays-v1.0.0.epub',
      )
      // https://github.com/daisy/epub-accessibility-tests/releases/download/math-extdesc-1.1.1/Accessibility-Tests-Mathematics-v1.1.1.epub
      ..testFile(
        'math-extdesc-1.1.1/Accessibility-Tests-Mathematics-v1.1.1.epub',
      )
      // https://github.com/daisy/epub-accessibility-tests/releases/download/math-extdesc-1.1.1/Accessibility-Tests-Extended-Descriptions-v1.1.1.epub
      ..testFile(
        'math-extdesc-1.1.1/Accessibility-Tests-Extended-Descriptions-v1.1.1.epub',
      );
  });
}
