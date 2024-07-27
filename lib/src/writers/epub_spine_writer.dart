import 'package:epub_io/src/schema/opf/epub_spine.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubSpineWriter {
  static void writeSpine(XmlBuilder builder, EpubSpine spine) {
    builder.element(
      'spine',
      attributes: {'toc': spine.tableOfContents!},
      nest: () {
        for (final spineitem in spine.items) {
          builder.element(
            'itemref',
            attributes: {
              'idref': spineitem.idRef!,
              'linear': spineitem.isLinear ? 'yes' : 'no',
            },
          );
        }
      },
    );
  }
}
