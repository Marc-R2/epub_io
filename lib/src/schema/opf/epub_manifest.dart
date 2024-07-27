import 'package:epub_io/src/schema/opf/epub_manifest_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_manifest.freezed.dart';

@freezed
class EpubManifest with _$EpubManifest {
  const factory EpubManifest({
    @Default(<EpubManifestItem>[]) List<EpubManifestItem> items,
  }) = _EpubManifest;
}
