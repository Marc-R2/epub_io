import 'package:test/scaffolding.dart';

import 'navigation/epub_navigation_doc_author_test.dart'
    as epub_navigation_doc_author;
import 'navigation/epub_navigation_doc_title_test.dart'
    as epub_navigation_doc_title;
import 'navigation/epub_navigation_head_meta_test.dart'
    as epub_navigation_head_meta;
import 'navigation/epub_navigation_head_test.dart' as epub_navigation_head;
import 'navigation/epub_navigation_label_test.dart' as epub_navigation_label;
import 'navigation/epub_navigation_point_test.dart' as epub_navigation_point;
import 'navigation/epub_navigation_target_test.dart' as epub_navigation_target;

void main() {
  group('Navigation', () {
    group('epub_navigation_doc_author', epub_navigation_doc_author.main);
    group('epub_navigation_doc_title', epub_navigation_doc_title.main);
    group('epub_navigation_head_meta', epub_navigation_head_meta.main);
    group('epub_navigation_head', epub_navigation_head.main);
    group('epub_navigation_label', epub_navigation_label.main);
    group('epub_navigation_point', epub_navigation_point.main);
    group('epub_navigation_target', epub_navigation_target.main);
  });
}
