import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:epub_io/src/schema/opf/epub_guide.dart';
import 'package:epub_io/src/schema/opf/epub_manifest.dart';
import 'package:epub_io/src/schema/opf/epub_metadata.dart';
import 'package:epub_io/src/schema/opf/epub_spine.dart';
import 'package:epub_io/src/schema/opf/epub_version.dart';
import 'package:epub_io/src/xml_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_package.freezed.dart';
part 'epub_package.g.dart';

@freezed
class EpubPackage with _$EpubPackage {
  const factory EpubPackage({
    required NameSpace nameSpace,
    required XMLInfo xmlInfo,
    required EpubVersion version,
    required EpubMetadata metadata,
    required EpubManifest manifest,
    required EpubSpine spine,
    EpubGuide? guide,
    List<MediaType>? bindings,
    String? uniqueIdentifier,
    String? prefix,
    String? xmlLang,
  }) = _EpubPackage;
}

@freezed
class MediaType with _$MediaType, XmlWrite {
  const factory MediaType({
    @JsonKey(name: 'media-type') String? mediaType,
    @JsonKey(name: 'handler') String? handler,
  }) = _MediaType;

  factory MediaType.fromJson(Map<String, dynamic> json) =>
      _$MediaTypeFromJson(json);

  const MediaType._();
}

@freezed
class NameSpace with _$NameSpace {
  const factory NameSpace({
    required String uri,
    String? prefix,
  }) = _NameSpace;
}
