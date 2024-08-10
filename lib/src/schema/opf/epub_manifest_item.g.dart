// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epub_manifest_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpubManifestItemImpl _$$EpubManifestItemImplFromJson(
        Map<String, dynamic> json) =>
    _$EpubManifestItemImpl(
      id: json['id'] as String,
      href: json['href'] as String,
      mediaType: json['media-type'] as String,
      mediaOverlay: json['media-overlay'] as String?,
      requiredNamespace: json['required-namespace'] as String?,
      requiredModules: json['required-modules'] as String?,
      fallback: json['fallback'] as String?,
      fallbackStyle: json['fallback-style'] as String?,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$EpubManifestItemImplToJson(
        _$EpubManifestItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'href': instance.href,
      'media-type': instance.mediaType,
      'media-overlay': instance.mediaOverlay,
      'required-namespace': instance.requiredNamespace,
      'required-modules': instance.requiredModules,
      'fallback': instance.fallback,
      'fallback-style': instance.fallbackStyle,
      'properties': instance.properties?.toList(),
    };
