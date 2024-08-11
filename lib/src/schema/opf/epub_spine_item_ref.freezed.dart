// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_spine_item_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubSpineItemRef {
  String get idRef => throw _privateConstructorUsedError;
  bool? get isLinear => throw _privateConstructorUsedError;
  String? get properties => throw _privateConstructorUsedError;

  /// Create a copy of EpubSpineItemRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubSpineItemRefCopyWith<EpubSpineItemRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubSpineItemRefCopyWith<$Res> {
  factory $EpubSpineItemRefCopyWith(
          EpubSpineItemRef value, $Res Function(EpubSpineItemRef) then) =
      _$EpubSpineItemRefCopyWithImpl<$Res, EpubSpineItemRef>;
  @useResult
  $Res call({String idRef, bool? isLinear, String? properties});
}

/// @nodoc
class _$EpubSpineItemRefCopyWithImpl<$Res, $Val extends EpubSpineItemRef>
    implements $EpubSpineItemRefCopyWith<$Res> {
  _$EpubSpineItemRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubSpineItemRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRef = null,
    Object? isLinear = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      idRef: null == idRef
          ? _value.idRef
          : idRef // ignore: cast_nullable_to_non_nullable
              as String,
      isLinear: freezed == isLinear
          ? _value.isLinear
          : isLinear // ignore: cast_nullable_to_non_nullable
              as bool?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubSpineItemRefImplCopyWith<$Res>
    implements $EpubSpineItemRefCopyWith<$Res> {
  factory _$$EpubSpineItemRefImplCopyWith(_$EpubSpineItemRefImpl value,
          $Res Function(_$EpubSpineItemRefImpl) then) =
      __$$EpubSpineItemRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idRef, bool? isLinear, String? properties});
}

/// @nodoc
class __$$EpubSpineItemRefImplCopyWithImpl<$Res>
    extends _$EpubSpineItemRefCopyWithImpl<$Res, _$EpubSpineItemRefImpl>
    implements _$$EpubSpineItemRefImplCopyWith<$Res> {
  __$$EpubSpineItemRefImplCopyWithImpl(_$EpubSpineItemRefImpl _value,
      $Res Function(_$EpubSpineItemRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubSpineItemRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRef = null,
    Object? isLinear = freezed,
    Object? properties = freezed,
  }) {
    return _then(_$EpubSpineItemRefImpl(
      idRef: null == idRef
          ? _value.idRef
          : idRef // ignore: cast_nullable_to_non_nullable
              as String,
      isLinear: freezed == isLinear
          ? _value.isLinear
          : isLinear // ignore: cast_nullable_to_non_nullable
              as bool?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubSpineItemRefImpl extends _EpubSpineItemRef {
  const _$EpubSpineItemRefImpl(
      {required this.idRef, this.isLinear, this.properties})
      : super._();

  @override
  final String idRef;
  @override
  final bool? isLinear;
  @override
  final String? properties;

  @override
  String toString() {
    return 'EpubSpineItemRef(idRef: $idRef, isLinear: $isLinear, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubSpineItemRefImpl &&
            (identical(other.idRef, idRef) || other.idRef == idRef) &&
            (identical(other.isLinear, isLinear) ||
                other.isLinear == isLinear) &&
            (identical(other.properties, properties) ||
                other.properties == properties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idRef, isLinear, properties);

  /// Create a copy of EpubSpineItemRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubSpineItemRefImplCopyWith<_$EpubSpineItemRefImpl> get copyWith =>
      __$$EpubSpineItemRefImplCopyWithImpl<_$EpubSpineItemRefImpl>(
          this, _$identity);
}

abstract class _EpubSpineItemRef extends EpubSpineItemRef {
  const factory _EpubSpineItemRef(
      {required final String idRef,
      final bool? isLinear,
      final String? properties}) = _$EpubSpineItemRefImpl;
  const _EpubSpineItemRef._() : super._();

  @override
  String get idRef;
  @override
  bool? get isLinear;
  @override
  String? get properties;

  /// Create a copy of EpubSpineItemRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubSpineItemRefImplCopyWith<_$EpubSpineItemRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
