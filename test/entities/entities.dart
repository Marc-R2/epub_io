import 'package:test/scaffolding.dart';

import 'epub_book_test.dart' as epub_book;
import 'epub_byte_content_file_test.dart' as epub_byte_content_file;
import 'epub_chapter_test.dart' as epub_chapter;
import 'epub_content_test.dart' as epub_content;
import 'epub_schema_test.dart' as epub_schema;
import 'epub_text_content_file_test.dart' as epub_text_content_file;

void main() {
  group('Entities', () {
    group('epub_book', epub_book.main);
    group('epub_byte_content_file', epub_byte_content_file.main);
    group('epub_chapter', epub_chapter.main);
    group('epub_content', epub_content.main);
    group('epub_schema', epub_schema.main);
    group('epub_text_content_file', epub_text_content_file.main);
  });
}
