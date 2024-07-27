import 'package:test/scaffolding.dart';

import 'epub_book_ref_test.dart' as epub_book_ref;
import 'epub_byte_content_file_ref_test.dart' as epub_byte_content_file_ref;
import 'epub_chapter_ref_test.dart' as epub_chapter_ref;
import 'epub_content_ref_test.dart' as epub_content_ref;
import 'epub_text_content_file_ref_test.dart' as epub_text_content_file_ref;

void main() {
  group('RefEntities', () {
    group('epub_book_ref', epub_book_ref.main);
    group('epub_byte_content_file_ref', epub_byte_content_file_ref.main);
    group('epub_chapter_ref', epub_chapter_ref.main);
    group('epub_content_ref', epub_content_ref.main);
    group('epub_text_content_file_ref', epub_text_content_file_ref.main);
  });
}
