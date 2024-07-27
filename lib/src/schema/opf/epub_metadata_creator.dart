import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata_creator.freezed.dart';

@freezed
class EpubMetadataCreator with _$EpubMetadataCreator {
  const factory EpubMetadataCreator({
    String? creator,
    String? fileAs,
    String? role,
  }) = _EpubMetadataCreator;
}
