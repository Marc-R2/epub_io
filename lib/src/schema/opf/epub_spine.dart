import 'package:epub_io/src/schema/opf/epub_spine_item_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_spine.freezed.dart';

@freezed
class EpubSpine with _$EpubSpine {
  const factory EpubSpine({
    required bool ltr,
    String? tableOfContents,
    @Default(<EpubSpineItemRef>[]) List<EpubSpineItemRef> items,
  }) = _EpubSpine;
}
