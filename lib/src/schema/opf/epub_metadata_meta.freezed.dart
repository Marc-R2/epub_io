// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubMetadataMetaV2 {
  Map<String, String> get attributes => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of EpubMetadataMetaV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubMetadataMetaV2CopyWith<EpubMetadataMetaV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubMetadataMetaV2CopyWith<$Res> {
  factory $EpubMetadataMetaV2CopyWith(
          EpubMetadataMetaV2 value, $Res Function(EpubMetadataMetaV2) then) =
      _$EpubMetadataMetaV2CopyWithImpl<$Res, EpubMetadataMetaV2>;
  @useResult
  $Res call({Map<String, String> attributes, String? content, String? name});
}

/// @nodoc
class _$EpubMetadataMetaV2CopyWithImpl<$Res, $Val extends EpubMetadataMetaV2>
    implements $EpubMetadataMetaV2CopyWith<$Res> {
  _$EpubMetadataMetaV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubMetadataMetaV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? content = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubMetadataMetaV2ImplCopyWith<$Res>
    implements $EpubMetadataMetaV2CopyWith<$Res> {
  factory _$$EpubMetadataMetaV2ImplCopyWith(_$EpubMetadataMetaV2Impl value,
          $Res Function(_$EpubMetadataMetaV2Impl) then) =
      __$$EpubMetadataMetaV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> attributes, String? content, String? name});
}

/// @nodoc
class __$$EpubMetadataMetaV2ImplCopyWithImpl<$Res>
    extends _$EpubMetadataMetaV2CopyWithImpl<$Res, _$EpubMetadataMetaV2Impl>
    implements _$$EpubMetadataMetaV2ImplCopyWith<$Res> {
  __$$EpubMetadataMetaV2ImplCopyWithImpl(_$EpubMetadataMetaV2Impl _value,
      $Res Function(_$EpubMetadataMetaV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of EpubMetadataMetaV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? content = freezed,
    Object? name = freezed,
  }) {
    return _then(_$EpubMetadataMetaV2Impl(
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubMetadataMetaV2Impl extends _EpubMetadataMetaV2 {
  const _$EpubMetadataMetaV2Impl(
      {required final Map<String, String> attributes, this.content, this.name})
      : _attributes = attributes,
        super._();

  final Map<String, String> _attributes;
  @override
  Map<String, String> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  final String? content;
  @override
  final String? name;

  @override
  String toString() {
    return 'EpubMetadataMetaV2(attributes: $attributes, content: $content, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubMetadataMetaV2Impl &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_attributes), content, name);

  /// Create a copy of EpubMetadataMetaV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubMetadataMetaV2ImplCopyWith<_$EpubMetadataMetaV2Impl> get copyWith =>
      __$$EpubMetadataMetaV2ImplCopyWithImpl<_$EpubMetadataMetaV2Impl>(
          this, _$identity);
}

abstract class _EpubMetadataMetaV2 extends EpubMetadataMetaV2 {
  const factory _EpubMetadataMetaV2(
      {required final Map<String, String> attributes,
      final String? content,
      final String? name}) = _$EpubMetadataMetaV2Impl;
  const _EpubMetadataMetaV2._() : super._();

  @override
  Map<String, String> get attributes;
  @override
  String? get content;
  @override
  String? get name;

  /// Create a copy of EpubMetadataMetaV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubMetadataMetaV2ImplCopyWith<_$EpubMetadataMetaV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpubMetadataMetaV3 {
  String get content => throw _privateConstructorUsedError;
  Map<String, String> get attributes => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get refines => throw _privateConstructorUsedError;
  String? get property => throw _privateConstructorUsedError;
  String? get scheme => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  String? get dcterms => throw _privateConstructorUsedError;

  /// Create a copy of EpubMetadataMetaV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubMetadataMetaV3CopyWith<EpubMetadataMetaV3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubMetadataMetaV3CopyWith<$Res> {
  factory $EpubMetadataMetaV3CopyWith(
          EpubMetadataMetaV3 value, $Res Function(EpubMetadataMetaV3) then) =
      _$EpubMetadataMetaV3CopyWithImpl<$Res, EpubMetadataMetaV3>;
  @useResult
  $Res call(
      {String content,
      Map<String, String> attributes,
      String? id,
      String? name,
      String? refines,
      String? property,
      String? scheme,
      String? lang,
      String? dcterms});
}

/// @nodoc
class _$EpubMetadataMetaV3CopyWithImpl<$Res, $Val extends EpubMetadataMetaV3>
    implements $EpubMetadataMetaV3CopyWith<$Res> {
  _$EpubMetadataMetaV3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubMetadataMetaV3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? attributes = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? refines = freezed,
    Object? property = freezed,
    Object? scheme = freezed,
    Object? lang = freezed,
    Object? dcterms = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      refines: freezed == refines
          ? _value.refines
          : refines // ignore: cast_nullable_to_non_nullable
              as String?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      dcterms: freezed == dcterms
          ? _value.dcterms
          : dcterms // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubMetadataMetaV3ImplCopyWith<$Res>
    implements $EpubMetadataMetaV3CopyWith<$Res> {
  factory _$$EpubMetadataMetaV3ImplCopyWith(_$EpubMetadataMetaV3Impl value,
          $Res Function(_$EpubMetadataMetaV3Impl) then) =
      __$$EpubMetadataMetaV3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      Map<String, String> attributes,
      String? id,
      String? name,
      String? refines,
      String? property,
      String? scheme,
      String? lang,
      String? dcterms});
}

/// @nodoc
class __$$EpubMetadataMetaV3ImplCopyWithImpl<$Res>
    extends _$EpubMetadataMetaV3CopyWithImpl<$Res, _$EpubMetadataMetaV3Impl>
    implements _$$EpubMetadataMetaV3ImplCopyWith<$Res> {
  __$$EpubMetadataMetaV3ImplCopyWithImpl(_$EpubMetadataMetaV3Impl _value,
      $Res Function(_$EpubMetadataMetaV3Impl) _then)
      : super(_value, _then);

  /// Create a copy of EpubMetadataMetaV3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? attributes = null,
    Object? id = freezed,
    Object? name = freezed,
    Object? refines = freezed,
    Object? property = freezed,
    Object? scheme = freezed,
    Object? lang = freezed,
    Object? dcterms = freezed,
  }) {
    return _then(_$EpubMetadataMetaV3Impl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      refines: freezed == refines
          ? _value.refines
          : refines // ignore: cast_nullable_to_non_nullable
              as String?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      dcterms: freezed == dcterms
          ? _value.dcterms
          : dcterms // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubMetadataMetaV3Impl extends _EpubMetadataMetaV3 {
  const _$EpubMetadataMetaV3Impl(
      {required this.content,
      required final Map<String, String> attributes,
      this.id,
      this.name,
      this.refines,
      this.property,
      this.scheme,
      this.lang,
      this.dcterms})
      : _attributes = attributes,
        super._();

  @override
  final String content;
  final Map<String, String> _attributes;
  @override
  Map<String, String> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? refines;
  @override
  final String? property;
  @override
  final String? scheme;
  @override
  final String? lang;
  @override
  final String? dcterms;

  @override
  String toString() {
    return 'EpubMetadataMetaV3(content: $content, attributes: $attributes, id: $id, name: $name, refines: $refines, property: $property, scheme: $scheme, lang: $lang, dcterms: $dcterms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubMetadataMetaV3Impl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.refines, refines) || other.refines == refines) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.dcterms, dcterms) || other.dcterms == dcterms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      const DeepCollectionEquality().hash(_attributes),
      id,
      name,
      refines,
      property,
      scheme,
      lang,
      dcterms);

  /// Create a copy of EpubMetadataMetaV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubMetadataMetaV3ImplCopyWith<_$EpubMetadataMetaV3Impl> get copyWith =>
      __$$EpubMetadataMetaV3ImplCopyWithImpl<_$EpubMetadataMetaV3Impl>(
          this, _$identity);
}

abstract class _EpubMetadataMetaV3 extends EpubMetadataMetaV3 {
  const factory _EpubMetadataMetaV3(
      {required final String content,
      required final Map<String, String> attributes,
      final String? id,
      final String? name,
      final String? refines,
      final String? property,
      final String? scheme,
      final String? lang,
      final String? dcterms}) = _$EpubMetadataMetaV3Impl;
  const _EpubMetadataMetaV3._() : super._();

  @override
  String get content;
  @override
  Map<String, String> get attributes;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get refines;
  @override
  String? get property;
  @override
  String? get scheme;
  @override
  String? get lang;
  @override
  String? get dcterms;

  /// Create a copy of EpubMetadataMetaV3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubMetadataMetaV3ImplCopyWith<_$EpubMetadataMetaV3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
