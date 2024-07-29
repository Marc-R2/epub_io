import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';

import 'object_compare.dart';

void printBook(ObjectCompare<EpubBook> book) {
  book
    ..line('.', (b) => b)
    ..line('Title', (b) => b.title)
    ..line('Author', (b) => b.author)
    ..line('Authors', (b) => b.authors, showObj: true);
  printSchema(book.line('Schema', (b) => b.schema));
  book
    ..line('Content', (b) => b.content)
    ..line('CoverImage', (b) => b.coverImage);
  book.lines('Chapters', (b) => b.chapters)
    ..line('length', (b) => b?.length, showObj: true)
    ..forEach();
}

void printSchema(ObjectCompare<EpubSchema?> schema) {
  schema.line('epubContainer', (b) => b?.epubContainer);
  printPackage(schema.line('package', (b) => b?.package));
  schema.line('navigation', (b) => b?.navigation);
}

void printPackage(ObjectCompare<EpubPackage?> package) {
  final version = package.line('version', (b) => b?.version);
  final metadata = package.line('metadata', (b) => b?.metadata);
  printMetadata(metadata);
  final manifest = package.line('manifest', (b) => b?.manifest);
  final spine = package.line('manifest', (b) => b?.spine);
  final guide = package.line('manifest', (b) => b?.guide);
}

void printMetadata(ObjectCompare<EpubMetadata?> metadata) {
  metadata
    ..line('titles', (b) => b?.titles)
    ..line('creators', (b) => b?.creators)
    ..line('subjects', (b) => b?.subjects)
    ..line('description', (b) => b?.description)
    ..line('publishers', (b) => b?.publishers)
    ..line('contributors', (b) => b?.contributors)
    ..line('dates', (b) => b?.dates)
    ..line('types', (b) => b?.types)
    ..line('formats', (b) => b?.formats)
    ..line('identifiers', (b) => b?.identifiers)
    ..line('sources', (b) => b?.sources)
    ..line('languages', (b) => b?.languages)
    ..line('relations', (b) => b?.relations)
    ..line('coverages', (b) => b?.coverages)
    ..line('rights', (b) => b?.rights, showObj: true);
  printMetaItems(metadata.lines('metaItems', (b) => b?.metaItems));
}

void printMetaItems(ObjectListCompare<EpubMetadataMeta?> metaItems) {
  metaItems
    ..line('length', (b) => b?.length, showObj: true)
    ..forEach(printMetaItem);
}

void printMetaItem(ObjectCompare<EpubMetadataMeta?> metaItem) {
  metaItem
    ..line('name', (b) => b?.name)
    ..line('content', (b) => b?.content, showObj: true)
    ..line('id', (b) => b?.id)
    ..line('refines', (b) => b?.refines)
    ..line('property', (b) => b?.property)
    ..line('scheme', (b) => b?.scheme)
    ..line('attributes', (b) => b?.attributes);
}
