import 'package:epub_io/src/schema/opf/epub_metadata_contributor.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_creator.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_date.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_identifier.dart';
import 'package:epub_io/src/schema/opf/epub_metadata_meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata.freezed.dart';

@freezed
class EpubMetadata with _$EpubMetadata {
  const factory EpubMetadata({
    @Default(<String>[]) List<String> titles,
    @Default(<EpubMetadataCreator>[]) List<EpubMetadataCreator> creators,
    @Default(<String>[]) List<String> subjects,
    String? description,
    @Default(<String>[]) List<String> publishers,
    @Default(<EpubMetadataContributor>[])
    List<EpubMetadataContributor> contributors,
    @Default(<EpubMetadataDate>[]) List<EpubMetadataDate> dates,
    @Default(<String>[]) List<String> types,
    @Default(<String>[]) List<String> formats,
    @Default(<EpubMetadataIdentifier>[])
    List<EpubMetadataIdentifier> identifiers,
    @Default(<String>[]) List<String> sources,
    @Default(<String>[]) List<String> languages,
    @Default(<String>[]) List<String> relations,
    @Default(<String>[]) List<String> coverages,
    @Default(<String>[]) List<String> rights,
    @Default(<EpubMetadataMeta>[]) List<EpubMetadataMeta> metaItems,
    String? xmlnsDc,
    String? xmlnsOpf,
    List<Link>? links,
  }) = _EpubMetadata;
}

@freezed
class Link with _$Link {
  const factory Link({
    required String href,
    String? rel,
    String? refines,
  }) = _Link;
}
