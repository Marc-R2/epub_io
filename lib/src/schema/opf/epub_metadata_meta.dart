import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata_meta.freezed.dart';

@freezed
class EpubMetadataMeta with _$EpubMetadataMeta {
  const factory EpubMetadataMeta({
    String? name,
    String? content,
    String? id,
    String? refines,
    String? property,
    String? scheme,
    @Default(<String, String>{}) Map<String, String> attributes,
  }) = _EpubMetadataMeta;
}
