import 'package:test/scaffolding.dart';

import 'opf/epub_guide_reference_test.dart' as epub_guide_ref;
import 'opf/epub_guide_test.dart' as epub_guide;
import 'opf/epub_manifest_item_test.dart' as epub_manifest_item;
import 'opf/epub_manifest_test.dart' as epub_manifest;
import 'opf/epub_metadata_contributor_test.dart' as epub_metadata_contributor;
import 'opf/epub_metadata_creator_test.dart' as epub_metadata_creator;
import 'opf/epub_metadata_date_test.dart' as epub_metadata_date;
import 'opf/epub_metadata_identifier_test.dart' as epub_metadata_identifier;
import 'opf/epub_metadata_meta_test.dart' as epub_metadata_meta;
import 'opf/epub_metadata_test.dart' as epub_metadata;
import 'opf/epub_package_test.dart' as epub_package;
import 'opf/epub_spine_item_ref_test.dart' as epub_spine_item_ref;
import 'opf/epub_spine_test.dart' as epub_spine;

void main() {
  group('OPF', () {
    group('epub_guide_ref', epub_guide_ref.main);
    group('epub_guide', epub_guide.main);
    group('epub_manifest_item', epub_manifest_item.main);
    group('epub_manifest', epub_manifest.main);
    group('epub_metadata_contributor', epub_metadata_contributor.main);
    group('epub_metadata_creator', epub_metadata_creator.main);
    group('epub_metadata_date', epub_metadata_date.main);
    group('epub_metadata_identifier', epub_metadata_identifier.main);
    group('epub_metadata_meta', epub_metadata_meta.main);
    group('epub_metadata', epub_metadata.main);
    group('epub_package', epub_package.main);
    group('epub_spine_item_ref', epub_spine_item_ref.main);
    group('epub_spine', epub_spine.main);
  });
}
