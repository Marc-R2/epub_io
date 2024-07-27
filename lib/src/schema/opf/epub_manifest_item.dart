import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_manifest_item.freezed.dart';

@freezed
class EpubManifestItem with _$EpubManifestItem {
  const factory EpubManifestItem({
    String? id,
    String? href,
    String? mediaType,
    String? mediaOverlay,
    String? requiredNamespace,
    String? requiredModules,
    String? fallback,
    String? fallbackStyle,
    String? properties,
  }) = _EpubManifestItem;
}
