import 'package:epub_io/src/schema/navigation/epub_navigation_head_meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_head.freezed.dart';

@freezed
class EpubNavigationHead with _$EpubNavigationHead {
  const factory EpubNavigationHead({
    @Default(<EpubNavigationHeadMeta>[]) List<EpubNavigationHeadMeta> metadata,
  }) = _EpubNavigationHead;
}
