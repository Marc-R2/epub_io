import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_head_meta.freezed.dart';

@freezed
class EpubNavigationHeadMeta with _$EpubNavigationHeadMeta {
  const factory EpubNavigationHeadMeta({
    String? name,
    String? content,
    String? scheme,
  }) = _EpubNavigationHeadMeta;
}
