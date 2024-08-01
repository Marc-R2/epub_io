import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/xml_write.dart';
import 'package:xml/xml.dart';

extension XmlWriter on XmlBuilder {
  void elementOr(
    String name, {
    NameSpace? namespace,
    Set<NameSpace> namespaces = const {},
    XmlWrite? attributes,
    bool isSelfClosing = true,
    Object? nest,
  }) {
    element(
      name,
      namespace: namespace?.uri,
      namespaces: Map.fromEntries(
        namespaces.map((e) => MapEntry(e.uri, e.prefix)),
      ),
      attributes: attributes?.toMap() ?? const {},
      isSelfClosing: isSelfClosing,
      nest: nest,
    );
  }

  void writeXml(String name, XmlWrite xmlWrite, {NameSpace? nameSpace}) =>
      elementOr(name, attributes: xmlWrite, namespace: nameSpace);

  void writeXmls(
    String name,
    Iterable<XmlWrite>? xmlWrites, {
    NameSpace? nameSpace,
  }) {
    if (xmlWrites == null) return;
    for (final xmlWrite in xmlWrites) {
      writeXml(name, xmlWrite, nameSpace: nameSpace);
    }
  }
}
