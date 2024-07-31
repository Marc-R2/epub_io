import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';

import 'object_compare.dart';

void printHashCodes(EpubBook orgBook, EpubBook bookRoundTrip) {
  printBook(ObjectCompare(orgBook, bookRoundTrip));
}

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
  package.line('version', (b) => b?.version);
  printMetadata(package.line('metadata', (b) => b?.metadata));
  package.line('manifest', (b) => b?.manifest);
  printSpine(package.line('spine', (b) => b?.spine));
  package.line('guide', (b) => b?.guide);
  package.lines('bindings', (b) => b?.bindings)
    ..line('length', (b) => b?.length, showObj: true)
    ..forEach(printMediaType);
  package
    ..line('uniqueIdentifier', (b) => b?.uniqueIdentifier, showObj: true)
    ..line('prefix', (b) => b?.prefix, showObj: true)
    ..line('xmlLang', (b) => b?.xmlLang, showObj: true)
    ..line('xmlVersion', (b) => b?.xmlVersion, showObj: true)
    ..line('xmlEncoding', (b) => b?.xmlEncoding, showObj: true);
  printNameSpace(package.line('nameSpace', (b) => b?.nameSpace, showObj: true));
}

void printNameSpace(ObjectCompare<NameSpace?> nameSpace) {
  nameSpace
    ..line('uri', (b) => b?.uri)
    ..line('prefix', (b) => b?.prefix);
}

void printMediaType(ObjectCompare<MediaType?> mediaType) {
  mediaType
    ..line('mediaType', (b) => b?.mediaType, showObj: true)
    ..line('handler', (b) => b?.handler, showObj: true);
}

void printSpine(ObjectCompare<EpubSpine?> spine) {
  spine
    ..line('ltr', (b) => b?.ltr, showObj: true)
    ..line('tableOfContents', (b) => b?.tableOfContents);
  spine.lines('items', (b) => b?.items).forEach(printEpubSpineItemRef);
}

void printEpubSpineItemRef(ObjectCompare<EpubSpineItemRef?> item) {
  item
    ..line('idRef', (b) => b?.idRef)
    ..line('isLinear', (b) => b?.isLinear, showObj: true);
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
    ..line('relations', (b) => b?.relations)..line(
      'coverages', (b) => b?.coverages)..line(
      'rights', (b) => b?.rights, showObj: true)..line(
      'xmlnsDc', (b) => b?.xmlnsDc, showObj: true)..line(
      'xmlnsOpf', (b) => b?.xmlnsOpf, showObj: true);
  printMetaItems(metadata.lines('metaItems', (b) => b?.metaItems));
  printLinks(metadata.lines('links', (b) => b?.links));
}

void printLinks(ObjectListCompare<Link?> links) {
  links
    ..line('length', (b) => b?.length, showObj: true)
    ..forEach(printLink);
}

void printLink(ObjectCompare<Link?> link) {
  link
    ..line('href', (b) => b?.href)
    ..line('rel', (b) => b?.rel)
    ..line('refines', (b) => b?.refines);
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
    ..line('refines', (b) => b?.refines)..line(
      'property', (b) => b?.property)..line('scheme', (b) => b?.scheme);
  metaItem.map('attributes', (b) => b?.attributes, showObj: true)
    ..line('length', (b) => b?.length, showObj: true)
    ..forEach();
}
