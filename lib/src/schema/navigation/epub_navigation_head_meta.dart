import 'package:epub_io/src/xml_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_head_meta.freezed.dart';
part 'epub_navigation_head_meta.g.dart';

@freezed
class EpubNavigationHeadMeta with _$EpubNavigationHeadMeta, XmlWrite {
  const factory EpubNavigationHeadMeta({
    required String name,
    required String content,
    String? scheme,
  }) = _EpubNavigationHeadMeta;

  factory EpubNavigationHeadMeta.fromJson(Map<String, dynamic> json) =>
      _$EpubNavigationHeadMetaFromJson(json);

  const EpubNavigationHeadMeta._();
}
