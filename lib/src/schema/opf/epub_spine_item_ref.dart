import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_spine_item_ref.freezed.dart';

@freezed
class EpubSpineItemRef with _$EpubSpineItemRef {
  const factory EpubSpineItemRef({
    required String idRef,
    bool? isLinear,
    String? properties,
  }) = _EpubSpineItemRef;
}
