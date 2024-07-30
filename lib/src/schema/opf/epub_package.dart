import 'package:epub_io/src/schema/opf/epub_guide.dart';
import 'package:epub_io/src/schema/opf/epub_manifest.dart';
import 'package:epub_io/src/schema/opf/epub_metadata.dart';
import 'package:epub_io/src/schema/opf/epub_spine.dart';
import 'package:epub_io/src/schema/opf/epub_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_package.freezed.dart';

@freezed
class EpubPackage with _$EpubPackage {
  const factory EpubPackage({
    required NameSpace nameSpace,
    EpubVersion? version,
    EpubMetadata? metadata,
    EpubManifest? manifest,
    EpubSpine? spine,
    EpubGuide? guide,
    List<MediaType>? bindings,
    String? uniqueIdentifier,
    String? prefix,
    String? xmlLang,
    String? xmlVersion,
    String? xmlEncoding,
  }) = _EpubPackage;
}

@freezed
class MediaType with _$MediaType {
  const factory MediaType({
    String? mediaType,
    String? handler,
  }) = _MediaType;
}

@freezed
class NameSpace with _$NameSpace {
  const factory NameSpace({
    required String uri,
    String? prefix,
  }) = _NameSpace;
}
