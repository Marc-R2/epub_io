import 'package:epub_io/src/schema/navigation/epub_navigation.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_point.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder;

/// The `EpubNavigationWriter` class is responsible for generating the NCX
/// (Navigation Control file for XML) document used in EPUB files from the
/// given navigation data model.
class EpubNavigationWriter {
  /// The XML namespace for the NCX file.
  static const String _namespace = 'http://www.daisy.org/z3986/2005/ncx/';

  /// Generates the NCX document as a string from the provided [navigation].
  ///
  /// This method creates the XML structure for the NCX, which includes the
  /// document head, title, and navigation map (table of contents).
  ///
  /// Returns a string containing the NCX document in XML format.
  static String writeNavigation(EpubNavigation navigation) {
    final builder = XmlBuilder();

    builder
      // Adds the XML declaration at the top of the file.
      ..processing('xml', 'version="1.0"')
      ..element(
        'ncx',
        attributes: {
          'version': '2005-1', // Specifies the NCX version.
          'lang': 'en', // Specifies the language of the NCX file.
        },
        namespace: _namespace,
        nest: () {
          builder
            ..element(
              'head',
              nest: () => builder.writeXmls('meta', navigation.head?.metadata),
            )
            ..element(
              'docTitle',
              nest: () => navigation.docTitle?.titles.forEach(builder.text),
            )
            ..element(
              'navMap',
              nest: () {
                for (final item in navigation.navMap!.points) {
                  writeNavigationPoint(builder, item);
                }
              },
            );
        },
      );

    return builder.buildDocument().toXmlString();
  }

  /// Writes an individual navigation point (chapter or section).
  ///
  /// The [builder] is used to construct the XML structure, and [point] contains
  /// the details of the navigation point to be included, such as its ID,
  /// play order, labels, and content source.
  static void writeNavigationPoint(
    XmlBuilder builder,
    EpubNavigationPoint point,
  ) {
    builder.element(
      'navPoint',
      attributes: {
        'id': point.id!,
        'playOrder': point.playOrder!,
      },
      nest: () {
        for (final element in point.navigationLabels) {
          builder.element(
            'navLabel',
            nest: () => builder.element(
              'text',
              nest: () => builder.text(element.text!),
            ),
          );
        }
        builder.element('content', attributes: {'src': point.content!.source!});
      },
    );
  }
}
