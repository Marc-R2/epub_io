// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationContent {
  String? get id => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationContentCopyWith<EpubNavigationContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationContentCopyWith<$Res> {
  factory $EpubNavigationContentCopyWith(EpubNavigationContent value,
          $Res Function(EpubNavigationContent) then) =
      _$EpubNavigationContentCopyWithImpl<$Res, EpubNavigationContent>;
  @useResult
  $Res call({String? id, String? source});
}

/// @nodoc
class _$EpubNavigationContentCopyWithImpl<$Res,
        $Val extends EpubNavigationContent>
    implements $EpubNavigationContentCopyWith<$Res> {
  _$EpubNavigationContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationContentImplCopyWith<$Res>
    implements $EpubNavigationContentCopyWith<$Res> {
  factory _$$EpubNavigationContentImplCopyWith(
          _$EpubNavigationContentImpl value,
          $Res Function(_$EpubNavigationContentImpl) then) =
      __$$EpubNavigationContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? source});
}

/// @nodoc
class __$$EpubNavigationContentImplCopyWithImpl<$Res>
    extends _$EpubNavigationContentCopyWithImpl<$Res,
        _$EpubNavigationContentImpl>
    implements _$$EpubNavigationContentImplCopyWith<$Res> {
  __$$EpubNavigationContentImplCopyWithImpl(_$EpubNavigationContentImpl _value,
      $Res Function(_$EpubNavigationContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
  }) {
    return _then(_$EpubNavigationContentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubNavigationContentImpl implements _EpubNavigationContent {
  const _$EpubNavigationContentImpl({this.id, this.source});

  @override
  final String? id;
  @override
  final String? source;

  @override
  String toString() {
    return 'EpubNavigationContent(id: $id, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationContentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, source);

  /// Create a copy of EpubNavigationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationContentImplCopyWith<_$EpubNavigationContentImpl>
      get copyWith => __$$EpubNavigationContentImplCopyWithImpl<
          _$EpubNavigationContentImpl>(this, _$identity);
}

abstract class _EpubNavigationContent implements EpubNavigationContent {
  const factory _EpubNavigationContent(
      {final String? id, final String? source}) = _$EpubNavigationContentImpl;

  @override
  String? get id;
  @override
  String? get source;

  /// Create a copy of EpubNavigationContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationContentImplCopyWith<_$EpubNavigationContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
