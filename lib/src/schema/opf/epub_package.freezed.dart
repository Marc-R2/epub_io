// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubPackage {
  NameSpace get nameSpace => throw _privateConstructorUsedError;
  EpubVersion? get version => throw _privateConstructorUsedError;
  EpubMetadata? get metadata => throw _privateConstructorUsedError;
  EpubManifest? get manifest => throw _privateConstructorUsedError;
  EpubSpine? get spine => throw _privateConstructorUsedError;
  EpubGuide? get guide => throw _privateConstructorUsedError;
  List<MediaType>? get bindings => throw _privateConstructorUsedError;
  String? get uniqueIdentifier => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get xmlLang => throw _privateConstructorUsedError;
  String? get xmlVersion => throw _privateConstructorUsedError;
  String? get xmlEncoding => throw _privateConstructorUsedError;

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubPackageCopyWith<EpubPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubPackageCopyWith<$Res> {
  factory $EpubPackageCopyWith(
          EpubPackage value, $Res Function(EpubPackage) then) =
      _$EpubPackageCopyWithImpl<$Res, EpubPackage>;
  @useResult
  $Res call(
      {NameSpace nameSpace,
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
      String? xmlEncoding});

  $NameSpaceCopyWith<$Res> get nameSpace;
  $EpubMetadataCopyWith<$Res>? get metadata;
  $EpubManifestCopyWith<$Res>? get manifest;
  $EpubSpineCopyWith<$Res>? get spine;
  $EpubGuideCopyWith<$Res>? get guide;
}

/// @nodoc
class _$EpubPackageCopyWithImpl<$Res, $Val extends EpubPackage>
    implements $EpubPackageCopyWith<$Res> {
  _$EpubPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameSpace = null,
    Object? version = freezed,
    Object? metadata = freezed,
    Object? manifest = freezed,
    Object? spine = freezed,
    Object? guide = freezed,
    Object? bindings = freezed,
    Object? uniqueIdentifier = freezed,
    Object? prefix = freezed,
    Object? xmlLang = freezed,
    Object? xmlVersion = freezed,
    Object? xmlEncoding = freezed,
  }) {
    return _then(_value.copyWith(
      nameSpace: null == nameSpace
          ? _value.nameSpace
          : nameSpace // ignore: cast_nullable_to_non_nullable
              as NameSpace,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as EpubVersion?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EpubMetadata?,
      manifest: freezed == manifest
          ? _value.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
              as EpubManifest?,
      spine: freezed == spine
          ? _value.spine
          : spine // ignore: cast_nullable_to_non_nullable
              as EpubSpine?,
      guide: freezed == guide
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as EpubGuide?,
      bindings: freezed == bindings
          ? _value.bindings
          : bindings // ignore: cast_nullable_to_non_nullable
              as List<MediaType>?,
      uniqueIdentifier: freezed == uniqueIdentifier
          ? _value.uniqueIdentifier
          : uniqueIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlLang: freezed == xmlLang
          ? _value.xmlLang
          : xmlLang // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlVersion: freezed == xmlVersion
          ? _value.xmlVersion
          : xmlVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlEncoding: freezed == xmlEncoding
          ? _value.xmlEncoding
          : xmlEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NameSpaceCopyWith<$Res> get nameSpace {
    return $NameSpaceCopyWith<$Res>(_value.nameSpace, (value) {
      return _then(_value.copyWith(nameSpace: value) as $Val);
    });
  }

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $EpubMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubManifestCopyWith<$Res>? get manifest {
    if (_value.manifest == null) {
      return null;
    }

    return $EpubManifestCopyWith<$Res>(_value.manifest!, (value) {
      return _then(_value.copyWith(manifest: value) as $Val);
    });
  }

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubSpineCopyWith<$Res>? get spine {
    if (_value.spine == null) {
      return null;
    }

    return $EpubSpineCopyWith<$Res>(_value.spine!, (value) {
      return _then(_value.copyWith(spine: value) as $Val);
    });
  }

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubGuideCopyWith<$Res>? get guide {
    if (_value.guide == null) {
      return null;
    }

    return $EpubGuideCopyWith<$Res>(_value.guide!, (value) {
      return _then(_value.copyWith(guide: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubPackageImplCopyWith<$Res>
    implements $EpubPackageCopyWith<$Res> {
  factory _$$EpubPackageImplCopyWith(
          _$EpubPackageImpl value, $Res Function(_$EpubPackageImpl) then) =
      __$$EpubPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NameSpace nameSpace,
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
      String? xmlEncoding});

  @override
  $NameSpaceCopyWith<$Res> get nameSpace;
  @override
  $EpubMetadataCopyWith<$Res>? get metadata;
  @override
  $EpubManifestCopyWith<$Res>? get manifest;
  @override
  $EpubSpineCopyWith<$Res>? get spine;
  @override
  $EpubGuideCopyWith<$Res>? get guide;
}

/// @nodoc
class __$$EpubPackageImplCopyWithImpl<$Res>
    extends _$EpubPackageCopyWithImpl<$Res, _$EpubPackageImpl>
    implements _$$EpubPackageImplCopyWith<$Res> {
  __$$EpubPackageImplCopyWithImpl(
      _$EpubPackageImpl _value, $Res Function(_$EpubPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameSpace = null,
    Object? version = freezed,
    Object? metadata = freezed,
    Object? manifest = freezed,
    Object? spine = freezed,
    Object? guide = freezed,
    Object? bindings = freezed,
    Object? uniqueIdentifier = freezed,
    Object? prefix = freezed,
    Object? xmlLang = freezed,
    Object? xmlVersion = freezed,
    Object? xmlEncoding = freezed,
  }) {
    return _then(_$EpubPackageImpl(
      nameSpace: null == nameSpace
          ? _value.nameSpace
          : nameSpace // ignore: cast_nullable_to_non_nullable
              as NameSpace,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as EpubVersion?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EpubMetadata?,
      manifest: freezed == manifest
          ? _value.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
              as EpubManifest?,
      spine: freezed == spine
          ? _value.spine
          : spine // ignore: cast_nullable_to_non_nullable
              as EpubSpine?,
      guide: freezed == guide
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as EpubGuide?,
      bindings: freezed == bindings
          ? _value._bindings
          : bindings // ignore: cast_nullable_to_non_nullable
              as List<MediaType>?,
      uniqueIdentifier: freezed == uniqueIdentifier
          ? _value.uniqueIdentifier
          : uniqueIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlLang: freezed == xmlLang
          ? _value.xmlLang
          : xmlLang // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlVersion: freezed == xmlVersion
          ? _value.xmlVersion
          : xmlVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlEncoding: freezed == xmlEncoding
          ? _value.xmlEncoding
          : xmlEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubPackageImpl implements _EpubPackage {
  const _$EpubPackageImpl(
      {required this.nameSpace,
      this.version,
      this.metadata,
      this.manifest,
      this.spine,
      this.guide,
      final List<MediaType>? bindings,
      this.uniqueIdentifier,
      this.prefix,
      this.xmlLang,
      this.xmlVersion,
      this.xmlEncoding})
      : _bindings = bindings;

  @override
  final NameSpace nameSpace;
  @override
  final EpubVersion? version;
  @override
  final EpubMetadata? metadata;
  @override
  final EpubManifest? manifest;
  @override
  final EpubSpine? spine;
  @override
  final EpubGuide? guide;
  final List<MediaType>? _bindings;
  @override
  List<MediaType>? get bindings {
    final value = _bindings;
    if (value == null) return null;
    if (_bindings is EqualUnmodifiableListView) return _bindings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? uniqueIdentifier;
  @override
  final String? prefix;
  @override
  final String? xmlLang;
  @override
  final String? xmlVersion;
  @override
  final String? xmlEncoding;

  @override
  String toString() {
    return 'EpubPackage(nameSpace: $nameSpace, version: $version, metadata: $metadata, manifest: $manifest, spine: $spine, guide: $guide, bindings: $bindings, uniqueIdentifier: $uniqueIdentifier, prefix: $prefix, xmlLang: $xmlLang, xmlVersion: $xmlVersion, xmlEncoding: $xmlEncoding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubPackageImpl &&
            (identical(other.nameSpace, nameSpace) ||
                other.nameSpace == nameSpace) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.manifest, manifest) ||
                other.manifest == manifest) &&
            (identical(other.spine, spine) || other.spine == spine) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            const DeepCollectionEquality().equals(other._bindings, _bindings) &&
            (identical(other.uniqueIdentifier, uniqueIdentifier) ||
                other.uniqueIdentifier == uniqueIdentifier) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.xmlLang, xmlLang) || other.xmlLang == xmlLang) &&
            (identical(other.xmlVersion, xmlVersion) ||
                other.xmlVersion == xmlVersion) &&
            (identical(other.xmlEncoding, xmlEncoding) ||
                other.xmlEncoding == xmlEncoding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nameSpace,
      version,
      metadata,
      manifest,
      spine,
      guide,
      const DeepCollectionEquality().hash(_bindings),
      uniqueIdentifier,
      prefix,
      xmlLang,
      xmlVersion,
      xmlEncoding);

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubPackageImplCopyWith<_$EpubPackageImpl> get copyWith =>
      __$$EpubPackageImplCopyWithImpl<_$EpubPackageImpl>(this, _$identity);
}

abstract class _EpubPackage implements EpubPackage {
  const factory _EpubPackage(
      {required final NameSpace nameSpace,
      final EpubVersion? version,
      final EpubMetadata? metadata,
      final EpubManifest? manifest,
      final EpubSpine? spine,
      final EpubGuide? guide,
      final List<MediaType>? bindings,
      final String? uniqueIdentifier,
      final String? prefix,
      final String? xmlLang,
      final String? xmlVersion,
      final String? xmlEncoding}) = _$EpubPackageImpl;

  @override
  NameSpace get nameSpace;
  @override
  EpubVersion? get version;
  @override
  EpubMetadata? get metadata;
  @override
  EpubManifest? get manifest;
  @override
  EpubSpine? get spine;
  @override
  EpubGuide? get guide;
  @override
  List<MediaType>? get bindings;
  @override
  String? get uniqueIdentifier;
  @override
  String? get prefix;
  @override
  String? get xmlLang;
  @override
  String? get xmlVersion;
  @override
  String? get xmlEncoding;

  /// Create a copy of EpubPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubPackageImplCopyWith<_$EpubPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaType _$MediaTypeFromJson(Map<String, dynamic> json) {
  return _MediaType.fromJson(json);
}

/// @nodoc
mixin _$MediaType {
  @JsonKey(name: 'media-type')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'handler')
  String? get handler => throw _privateConstructorUsedError;

  /// Serializes this MediaType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaTypeCopyWith<MediaType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaTypeCopyWith<$Res> {
  factory $MediaTypeCopyWith(MediaType value, $Res Function(MediaType) then) =
      _$MediaTypeCopyWithImpl<$Res, MediaType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'media-type') String? mediaType,
      @JsonKey(name: 'handler') String? handler});
}

/// @nodoc
class _$MediaTypeCopyWithImpl<$Res, $Val extends MediaType>
    implements $MediaTypeCopyWith<$Res> {
  _$MediaTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = freezed,
    Object? handler = freezed,
  }) {
    return _then(_value.copyWith(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      handler: freezed == handler
          ? _value.handler
          : handler // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaTypeImplCopyWith<$Res>
    implements $MediaTypeCopyWith<$Res> {
  factory _$$MediaTypeImplCopyWith(
          _$MediaTypeImpl value, $Res Function(_$MediaTypeImpl) then) =
      __$$MediaTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'media-type') String? mediaType,
      @JsonKey(name: 'handler') String? handler});
}

/// @nodoc
class __$$MediaTypeImplCopyWithImpl<$Res>
    extends _$MediaTypeCopyWithImpl<$Res, _$MediaTypeImpl>
    implements _$$MediaTypeImplCopyWith<$Res> {
  __$$MediaTypeImplCopyWithImpl(
      _$MediaTypeImpl _value, $Res Function(_$MediaTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = freezed,
    Object? handler = freezed,
  }) {
    return _then(_$MediaTypeImpl(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      handler: freezed == handler
          ? _value.handler
          : handler // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaTypeImpl extends _MediaType {
  const _$MediaTypeImpl(
      {@JsonKey(name: 'media-type') this.mediaType,
      @JsonKey(name: 'handler') this.handler})
      : super._();

  factory _$MediaTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaTypeImplFromJson(json);

  @override
  @JsonKey(name: 'media-type')
  final String? mediaType;
  @override
  @JsonKey(name: 'handler')
  final String? handler;

  @override
  String toString() {
    return 'MediaType(mediaType: $mediaType, handler: $handler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaTypeImpl &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.handler, handler) || other.handler == handler));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mediaType, handler);

  /// Create a copy of MediaType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaTypeImplCopyWith<_$MediaTypeImpl> get copyWith =>
      __$$MediaTypeImplCopyWithImpl<_$MediaTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaTypeImplToJson(
      this,
    );
  }
}

abstract class _MediaType extends MediaType {
  const factory _MediaType(
      {@JsonKey(name: 'media-type') final String? mediaType,
      @JsonKey(name: 'handler') final String? handler}) = _$MediaTypeImpl;
  const _MediaType._() : super._();

  factory _MediaType.fromJson(Map<String, dynamic> json) =
      _$MediaTypeImpl.fromJson;

  @override
  @JsonKey(name: 'media-type')
  String? get mediaType;
  @override
  @JsonKey(name: 'handler')
  String? get handler;

  /// Create a copy of MediaType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaTypeImplCopyWith<_$MediaTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NameSpace {
  String get uri => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;

  /// Create a copy of NameSpace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NameSpaceCopyWith<NameSpace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameSpaceCopyWith<$Res> {
  factory $NameSpaceCopyWith(NameSpace value, $Res Function(NameSpace) then) =
      _$NameSpaceCopyWithImpl<$Res, NameSpace>;
  @useResult
  $Res call({String uri, String? prefix});
}

/// @nodoc
class _$NameSpaceCopyWithImpl<$Res, $Val extends NameSpace>
    implements $NameSpaceCopyWith<$Res> {
  _$NameSpaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NameSpace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? prefix = freezed,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameSpaceImplCopyWith<$Res>
    implements $NameSpaceCopyWith<$Res> {
  factory _$$NameSpaceImplCopyWith(
          _$NameSpaceImpl value, $Res Function(_$NameSpaceImpl) then) =
      __$$NameSpaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, String? prefix});
}

/// @nodoc
class __$$NameSpaceImplCopyWithImpl<$Res>
    extends _$NameSpaceCopyWithImpl<$Res, _$NameSpaceImpl>
    implements _$$NameSpaceImplCopyWith<$Res> {
  __$$NameSpaceImplCopyWithImpl(
      _$NameSpaceImpl _value, $Res Function(_$NameSpaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NameSpace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? prefix = freezed,
  }) {
    return _then(_$NameSpaceImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NameSpaceImpl implements _NameSpace {
  const _$NameSpaceImpl({required this.uri, this.prefix});

  @override
  final String uri;
  @override
  final String? prefix;

  @override
  String toString() {
    return 'NameSpace(uri: $uri, prefix: $prefix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameSpaceImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, prefix);

  /// Create a copy of NameSpace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameSpaceImplCopyWith<_$NameSpaceImpl> get copyWith =>
      __$$NameSpaceImplCopyWithImpl<_$NameSpaceImpl>(this, _$identity);
}

abstract class _NameSpace implements NameSpace {
  const factory _NameSpace({required final String uri, final String? prefix}) =
      _$NameSpaceImpl;

  @override
  String get uri;
  @override
  String? get prefix;

  /// Create a copy of NameSpace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameSpaceImplCopyWith<_$NameSpaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
