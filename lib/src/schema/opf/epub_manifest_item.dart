import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_manifest_item.freezed.dart';
part 'epub_manifest_item.g.dart';

@freezed
class EpubManifestItem with _$EpubManifestItem {
  const factory EpubManifestItem({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'href') required String href,
    @JsonKey(name: 'media-type') required String mediaType,
    @JsonKey(name: 'media-overlay') String? mediaOverlay,
    @JsonKey(name: 'required-namespace') String? requiredNamespace,
    @JsonKey(name: 'required-modules') String? requiredModules,
    @JsonKey(name: 'fallback') String? fallback,
    @JsonKey(name: 'fallback-style') String? fallbackStyle,
    @JsonKey(name: 'properties') Set<String>? properties,
  }) = _EpubManifestItem;

  factory EpubManifestItem.fromJson(Map<String, dynamic> json) =>
      _$EpubManifestItemFromJson(json);
}
