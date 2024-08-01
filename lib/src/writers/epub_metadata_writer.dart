import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/xml_writer.dart';
import 'package:xml/xml.dart' show XmlBuilder;

class EpubMetadataWriter {
  static void writeMetadata(
    XmlBuilder builder,
    EpubMetadata? meta,
    EpubVersion? version,
    NameSpace nameSpace,
  ) {
    final dcNamespace = meta!.xmlnsDc;
    final opfNamespace = meta.xmlnsOpf;

    builder.element(
      'metadata',
      namespace: nameSpace.uri,
      namespaces: {
        if (opfNamespace != null) opfNamespace: 'opf',
        if (dcNamespace != null) dcNamespace: 'dc',
      },
      nest: () {
        builder.nests('title', meta.titles);

        for (final item in meta.creators) {
          builder.element(
            'creator',
            namespace: dcNamespace,
            nest: () {
              builder
                ..attribute('role', item.role, namespace: opfNamespace)
                ..attribute('file-as', item.fileAs, namespace: opfNamespace)
                ..text(item.creator!);
            },
          );
        }

        builder
          ..nests('subject', meta.subjects)
          ..nests('publisher', meta.publishers);

        for (final item in meta.contributors) {
          builder.element(
            'contributor',
            namespace: dcNamespace,
            nest: () {
              builder
                ..attribute('role', item.role, namespace: opfNamespace)
                ..attribute('file-as', item.fileAs, namespace: opfNamespace)
                ..text(item.contributor!);
            },
          );
        }

        for (final date in meta.dates) {
          builder.element(
            'date',
            namespace: dcNamespace,
            nest: () {
              builder
                ..attribute('event', date.event, namespace: opfNamespace)
                ..text(date.date!);
            },
          );
        }

        builder
          ..nests('type', meta.types)
          ..nests('format', meta.formats);

        for (final id in meta.identifiers) {
          builder.element(
            'identifier',
            namespace: dcNamespace,
            nest: () {
              builder
                ..attribute('id', id.id)
                ..attribute('scheme', id.scheme, namespace: opfNamespace)
                ..text(id.identifier!);
            },
          );
        }

        builder
          ..nests('source', meta.sources)
          ..nests('language', meta.languages)
          ..nests('relation', meta.relations)
          ..nests('coverage', meta.coverages)
          ..nests('rights', meta.rights);

        for (final metaItem in meta.metaItems) {
          builder.element(
            'meta',
            namespace: nameSpace.uri,
            nest: () {
              if (version == EpubVersion.epub2) {
                builder
                  ..attribute('name', metaItem.name)
                  ..attribute('content', metaItem.content);
              } else if (version == EpubVersion.epub3) {
                builder
                  ..attribute('id', metaItem.id)
                  ..attribute('refines', metaItem.refines)
                  ..attribute('property', metaItem.property)
                  ..attribute('scheme', metaItem.scheme)
                  ..text(metaItem.content!);

                metaItem.attributes.forEach(
                  (key, value) => builder.attribute(key, value),
                );
              }
            },
          );
        }

        builder.writeXmls('link', meta.links);

        if (meta.description != null) {
          builder.element(
            'description',
            namespace: dcNamespace,
            nest: meta.description,
          );
        }
      },
    );
  }
}
