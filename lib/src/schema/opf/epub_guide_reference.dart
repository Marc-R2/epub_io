import 'package:epub_io/src/xml_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_guide_reference.freezed.dart';
part 'epub_guide_reference.g.dart';

@freezed
class EpubGuideReference with _$EpubGuideReference, XmlWrite {
  const factory EpubGuideReference({
    String? type,
    String? title,
    String? href,
  }) = _EpubGuideReference;

  factory EpubGuideReference.fromJson(Map<String, dynamic> json) =>
      _$EpubGuideReferenceFromJson(json);

  const EpubGuideReference._();
}
