import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata_contributor.freezed.dart';

@freezed
class EpubMetadataContributor with _$EpubMetadataContributor {
  const factory EpubMetadataContributor({
    String? contributor,
    String? fileAs,
    String? role,
  }) = _EpubMetadataContributor;
}
