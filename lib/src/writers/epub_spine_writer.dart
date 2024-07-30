import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubSpineWriter {
  static void writeSpine(
    XmlBuilder builder,
    EpubSpine spine,
    NameSpace nameSpace,
  ) {
    builder.element(
      'spine',
      namespace: nameSpace.uri,
      attributes: {
        if (spine.tableOfContents != null) 'toc': spine.tableOfContents!,
        'page-progression-direction': spine.ltr ? 'ltr' : 'rtl',
      },
      nest: () {
        for (final spineitem in spine.items) {
          builder.element(
            'itemref',
            namespace: nameSpace.uri,
            attributes: {
              'idref': spineitem.idRef!,
              if (spineitem.isLinear != null)
                'linear': spineitem.isLinear! ? 'yes' : 'no',
              if (spineitem.properties != null)
                'properties': spineitem.properties!,
            },
          );
        }
      },
    );
  }
}
