// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_manifest_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpubManifestItem _$EpubManifestItemFromJson(Map<String, dynamic> json) {
  return _EpubManifestItem.fromJson(json);
}

/// @nodoc
mixin _$EpubManifestItem {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'href')
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: 'media-type')
  String get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'media-overlay')
  String? get mediaOverlay => throw _privateConstructorUsedError;
  @JsonKey(name: 'required-namespace')
  String? get requiredNamespace => throw _privateConstructorUsedError;
  @JsonKey(name: 'required-modules')
  String? get requiredModules => throw _privateConstructorUsedError;
  @JsonKey(name: 'fallback')
  String? get fallback => throw _privateConstructorUsedError;
  @JsonKey(name: 'fallback-style')
  String? get fallbackStyle => throw _privateConstructorUsedError;
  @JsonKey(name: 'properties')
  Set<String>? get properties => throw _privateConstructorUsedError;

  /// Serializes this EpubManifestItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpubManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubManifestItemCopyWith<EpubManifestItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubManifestItemCopyWith<$Res> {
  factory $EpubManifestItemCopyWith(
          EpubManifestItem value, $Res Function(EpubManifestItem) then) =
      _$EpubManifestItemCopyWithImpl<$Res, EpubManifestItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'href') String href,
      @JsonKey(name: 'media-type') String mediaType,
      @JsonKey(name: 'media-overlay') String? mediaOverlay,
      @JsonKey(name: 'required-namespace') String? requiredNamespace,
      @JsonKey(name: 'required-modules') String? requiredModules,
      @JsonKey(name: 'fallback') String? fallback,
      @JsonKey(name: 'fallback-style') String? fallbackStyle,
      @JsonKey(name: 'properties') Set<String>? properties});
}

/// @nodoc
class _$EpubManifestItemCopyWithImpl<$Res, $Val extends EpubManifestItem>
    implements $EpubManifestItemCopyWith<$Res> {
  _$EpubManifestItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? href = null,
    Object? mediaType = null,
    Object? mediaOverlay = freezed,
    Object? requiredNamespace = freezed,
    Object? requiredModules = freezed,
    Object? fallback = freezed,
    Object? fallbackStyle = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      mediaOverlay: freezed == mediaOverlay
          ? _value.mediaOverlay
          : mediaOverlay // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredNamespace: freezed == requiredNamespace
          ? _value.requiredNamespace
          : requiredNamespace // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredModules: freezed == requiredModules
          ? _value.requiredModules
          : requiredModules // ignore: cast_nullable_to_non_nullable
              as String?,
      fallback: freezed == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String?,
      fallbackStyle: freezed == fallbackStyle
          ? _value.fallbackStyle
          : fallbackStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubManifestItemImplCopyWith<$Res>
    implements $EpubManifestItemCopyWith<$Res> {
  factory _$$EpubManifestItemImplCopyWith(_$EpubManifestItemImpl value,
          $Res Function(_$EpubManifestItemImpl) then) =
      __$$EpubManifestItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'href') String href,
      @JsonKey(name: 'media-type') String mediaType,
      @JsonKey(name: 'media-overlay') String? mediaOverlay,
      @JsonKey(name: 'required-namespace') String? requiredNamespace,
      @JsonKey(name: 'required-modules') String? requiredModules,
      @JsonKey(name: 'fallback') String? fallback,
      @JsonKey(name: 'fallback-style') String? fallbackStyle,
      @JsonKey(name: 'properties') Set<String>? properties});
}

/// @nodoc
class __$$EpubManifestItemImplCopyWithImpl<$Res>
    extends _$EpubManifestItemCopyWithImpl<$Res, _$EpubManifestItemImpl>
    implements _$$EpubManifestItemImplCopyWith<$Res> {
  __$$EpubManifestItemImplCopyWithImpl(_$EpubManifestItemImpl _value,
      $Res Function(_$EpubManifestItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? href = null,
    Object? mediaType = null,
    Object? mediaOverlay = freezed,
    Object? requiredNamespace = freezed,
    Object? requiredModules = freezed,
    Object? fallback = freezed,
    Object? fallbackStyle = freezed,
    Object? properties = freezed,
  }) {
    return _then(_$EpubManifestItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      mediaOverlay: freezed == mediaOverlay
          ? _value.mediaOverlay
          : mediaOverlay // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredNamespace: freezed == requiredNamespace
          ? _value.requiredNamespace
          : requiredNamespace // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredModules: freezed == requiredModules
          ? _value.requiredModules
          : requiredModules // ignore: cast_nullable_to_non_nullable
              as String?,
      fallback: freezed == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String?,
      fallbackStyle: freezed == fallbackStyle
          ? _value.fallbackStyle
          : fallbackStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpubManifestItemImpl extends _EpubManifestItem {
  const _$EpubManifestItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'href') required this.href,
      @JsonKey(name: 'media-type') required this.mediaType,
      @JsonKey(name: 'media-overlay') this.mediaOverlay,
      @JsonKey(name: 'required-namespace') this.requiredNamespace,
      @JsonKey(name: 'required-modules') this.requiredModules,
      @JsonKey(name: 'fallback') this.fallback,
      @JsonKey(name: 'fallback-style') this.fallbackStyle,
      @JsonKey(name: 'properties') final Set<String>? properties})
      : _properties = properties,
        super._();

  factory _$EpubManifestItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpubManifestItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'href')
  final String href;
  @override
  @JsonKey(name: 'media-type')
  final String mediaType;
  @override
  @JsonKey(name: 'media-overlay')
  final String? mediaOverlay;
  @override
  @JsonKey(name: 'required-namespace')
  final String? requiredNamespace;
  @override
  @JsonKey(name: 'required-modules')
  final String? requiredModules;
  @override
  @JsonKey(name: 'fallback')
  final String? fallback;
  @override
  @JsonKey(name: 'fallback-style')
  final String? fallbackStyle;
  final Set<String>? _properties;
  @override
  @JsonKey(name: 'properties')
  Set<String>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableSetView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'EpubManifestItem(id: $id, href: $href, mediaType: $mediaType, mediaOverlay: $mediaOverlay, requiredNamespace: $requiredNamespace, requiredModules: $requiredModules, fallback: $fallback, fallbackStyle: $fallbackStyle, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubManifestItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.mediaOverlay, mediaOverlay) ||
                other.mediaOverlay == mediaOverlay) &&
            (identical(other.requiredNamespace, requiredNamespace) ||
                other.requiredNamespace == requiredNamespace) &&
            (identical(other.requiredModules, requiredModules) ||
                other.requiredModules == requiredModules) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback) &&
            (identical(other.fallbackStyle, fallbackStyle) ||
                other.fallbackStyle == fallbackStyle) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      href,
      mediaType,
      mediaOverlay,
      requiredNamespace,
      requiredModules,
      fallback,
      fallbackStyle,
      const DeepCollectionEquality().hash(_properties));

  /// Create a copy of EpubManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubManifestItemImplCopyWith<_$EpubManifestItemImpl> get copyWith =>
      __$$EpubManifestItemImplCopyWithImpl<_$EpubManifestItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpubManifestItemImplToJson(
      this,
    );
  }
}

abstract class _EpubManifestItem extends EpubManifestItem {
  const factory _EpubManifestItem(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'href') required final String href,
          @JsonKey(name: 'media-type') required final String mediaType,
          @JsonKey(name: 'media-overlay') final String? mediaOverlay,
          @JsonKey(name: 'required-namespace') final String? requiredNamespace,
          @JsonKey(name: 'required-modules') final String? requiredModules,
          @JsonKey(name: 'fallback') final String? fallback,
          @JsonKey(name: 'fallback-style') final String? fallbackStyle,
          @JsonKey(name: 'properties') final Set<String>? properties}) =
      _$EpubManifestItemImpl;
  const _EpubManifestItem._() : super._();

  factory _EpubManifestItem.fromJson(Map<String, dynamic> json) =
      _$EpubManifestItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'href')
  String get href;
  @override
  @JsonKey(name: 'media-type')
  String get mediaType;
  @override
  @JsonKey(name: 'media-overlay')
  String? get mediaOverlay;
  @override
  @JsonKey(name: 'required-namespace')
  String? get requiredNamespace;
  @override
  @JsonKey(name: 'required-modules')
  String? get requiredModules;
  @override
  @JsonKey(name: 'fallback')
  String? get fallback;
  @override
  @JsonKey(name: 'fallback-style')
  String? get fallbackStyle;
  @override
  @JsonKey(name: 'properties')
  Set<String>? get properties;

  /// Create a copy of EpubManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubManifestItemImplCopyWith<_$EpubManifestItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
