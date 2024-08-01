import 'package:epub_io/epub_io.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubManifestWriter {
  static void writeManifest(
    XmlBuilder builder,
    EpubManifest manifest,
    NameSpace nameSpace,
  ) {
    builder.element(
      'manifest',
      namespace: nameSpace.uri,
      nest: () {
        for (final item in manifest.items) {
          builder.element(
            'item',
            namespace: nameSpace.uri,
            nest: () {
              builder
                ..attribute('id', item.id)
                ..attribute('href', item.href)
                ..attribute('media-type', item.mediaType)
                ..attribute('media-overlay', item.mediaOverlay)
                ..attribute('required-namespace', item.requiredNamespace)
                ..attribute('required-modules', item.requiredModules)
                ..attribute('fallback', item.fallback)
                ..attribute('fallback-style', item.fallbackStyle);

              if (item.properties != null) {
                builder.attribute('properties', item.properties!.join(' '));
              }
            },
          );
        }
      },
    );
  }
}
