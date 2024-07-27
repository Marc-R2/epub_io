import 'package:epub_io/src/schema/opf/epub_guide_reference.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_guide.freezed.dart';

@freezed
class EpubGuide with _$EpubGuide {
  const factory EpubGuide({
    @Default(<EpubGuideReference>[]) List<EpubGuideReference> items,
  }) = _EpubGuide;
}
