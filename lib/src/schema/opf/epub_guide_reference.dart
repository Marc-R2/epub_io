import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_guide_reference.freezed.dart';

@freezed
class EpubGuideReference with _$EpubGuideReference {
  const factory EpubGuideReference({
    String? type,
    String? title,
    String? href,
  }) = _EpubGuideReference;
}
