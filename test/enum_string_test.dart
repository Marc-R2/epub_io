import 'package:epub_io/epub_io.dart';
import 'package:test/test.dart';

void main() {
  group('EnumFromString', () {
    test('Enum One', () {
      expect(
        EnumFromString<Simple>(Simple.values).get('ONE'),
        equals(Simple.one),
      );
    });

    test('Enum Two', () {
      expect(
        EnumFromString<Simple>(Simple.values).get('TWO'),
        equals(Simple.two),
      );
    });

    test('Enum One Lower Case', () {
      expect(
        EnumFromString<Simple>(Simple.values).get('one'),
        equals(Simple.one),
      );
    });

    test('Enum null', () {
      expect(EnumFromString<Simple>(Simple.values).get('null'), isNull);
    });
  });
}

enum Simple { one, two, three }
