import 'package:epub_io/src/schema/opf/epub_spine.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubSpineWriter {
  static void writeSpine(XmlBuilder builder, EpubSpine spine) {
    builder.element(
      'spine',
      attributes: {
        if (spine.tableOfContents != null) 'toc': spine.tableOfContents!,
        'page-progression-direction': spine.ltr ? 'ltr' : 'rtl',
      },
      nest: () {
        for (final spineitem in spine.items) {
          builder.element(
            'itemref',
            attributes: {
              'idref': spineitem.idRef!,
              if (spineitem.isLinear != null)
                'linear': spineitem.isLinear! ? 'yes' : 'no',
            },
          );
        }
      },
    );
  }
}
