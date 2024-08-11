import 'package:xml/xml.dart';

mixin EpubReadWrite<T extends EpubReadWrite<T>> {
  T readXMLBuilder(XmlElement node);

  void writeXMLBuilder(XmlBuilder builder, [String? namespace]);

  bool _testReversible() {
    final builder = XmlBuilder();
    writeXMLBuilder(builder);
    final node = builder.buildDocument().rootElement;
    final result = readXMLBuilder(node);
    final builder2 = XmlBuilder();
    result.writeXMLBuilder(builder2);
    final node2 = builder2.buildDocument().rootElement;
    return node.toXmlString(pretty: true) == node2.toXmlString(pretty: true);
  }

  T readXML(XmlElement node) {
    final result = readXMLBuilder(node);
    assert(
      _testReversible.call(),
      'readXMLBuilder and writeXMLBuilder are not inverses',
    );
    return result;
  }

  void writeXML(XmlBuilder builder, [String? namespace]) {
    writeXMLBuilder(builder, namespace);
  }
}
