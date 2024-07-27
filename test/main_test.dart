import 'package:test/scaffolding.dart';

import 'entities/entities.dart' as entities;
import 'enum_string_test.dart' as enum_string;
import 'epub_image_tests.dart' as epub_image;
import 'epub_reader_test.dart' as epub_reader;
import 'epub_writer_tests.dart' as epub_writer;
import 'ref_entities/ref_entities.dart' as ref_entities;
import 'schema/navigation.dart' as navigation;
import 'schema/opf.dart' as opf;

void main() {
  group('EpubIO Main test', () {
    group('Entities', entities.main);
    group('RefEntities', ref_entities.main);
    group('Navigation', navigation.main);
    group('OPF', opf.main);
    group('EnumString', enum_string.main);
    group('EpubImage', epub_image.main);
    group('EpubReader', epub_reader.main);
    group('EpubWriter', epub_writer.main);
  });
}
