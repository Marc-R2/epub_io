import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubGuideWriter {
  static void writeGuide(
    XmlBuilder builder,
    EpubGuide guide,
    NameSpace nameSpace,
  ) {
    builder.element(
      'guide',
      namespace: nameSpace.uri,
      nest: () {
        for (final guideItem in guide.items) {
          builder.element(
            'reference',
            namespace: nameSpace.uri,
            attributes: {
              'type': guideItem.type!,
              'title': guideItem.title!,
              'href': guideItem.href!,
            },
          );
        }
      },
    );
  }
}
