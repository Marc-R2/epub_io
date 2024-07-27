import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata.freezed.dart';

@freezed
class EpubNavigationContent with _$EpubNavigationContent {
  const factory EpubNavigationContent({
    String? id,
    String? source,
  }) = _EpubNavigationContent;
}
