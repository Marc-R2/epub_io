import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata_identifier.freezed.dart';

@freezed
class EpubMetadataIdentifier with _$EpubMetadataIdentifier {
  const factory EpubMetadataIdentifier({
    String? id,
    String? scheme,
    String? identifier,
  }) = _EpubMetadataIdentifier;
}
