import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/xml_writer.dart';
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
      nest: () => builder.writeXmls(
        'reference',
        guide.items,
        nameSpace: nameSpace,
      ),
    );
  }
}
