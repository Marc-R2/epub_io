// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_head_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationHeadMeta {
  String? get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get scheme => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationHeadMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationHeadMetaCopyWith<EpubNavigationHeadMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationHeadMetaCopyWith<$Res> {
  factory $EpubNavigationHeadMetaCopyWith(EpubNavigationHeadMeta value,
          $Res Function(EpubNavigationHeadMeta) then) =
      _$EpubNavigationHeadMetaCopyWithImpl<$Res, EpubNavigationHeadMeta>;
  @useResult
  $Res call({String? name, String? content, String? scheme});
}

/// @nodoc
class _$EpubNavigationHeadMetaCopyWithImpl<$Res,
        $Val extends EpubNavigationHeadMeta>
    implements $EpubNavigationHeadMetaCopyWith<$Res> {
  _$EpubNavigationHeadMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationHeadMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? scheme = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationHeadMetaImplCopyWith<$Res>
    implements $EpubNavigationHeadMetaCopyWith<$Res> {
  factory _$$EpubNavigationHeadMetaImplCopyWith(
          _$EpubNavigationHeadMetaImpl value,
          $Res Function(_$EpubNavigationHeadMetaImpl) then) =
      __$$EpubNavigationHeadMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? content, String? scheme});
}

/// @nodoc
class __$$EpubNavigationHeadMetaImplCopyWithImpl<$Res>
    extends _$EpubNavigationHeadMetaCopyWithImpl<$Res,
        _$EpubNavigationHeadMetaImpl>
    implements _$$EpubNavigationHeadMetaImplCopyWith<$Res> {
  __$$EpubNavigationHeadMetaImplCopyWithImpl(
      _$EpubNavigationHeadMetaImpl _value,
      $Res Function(_$EpubNavigationHeadMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationHeadMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? scheme = freezed,
  }) {
    return _then(_$EpubNavigationHeadMetaImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubNavigationHeadMetaImpl implements _EpubNavigationHeadMeta {
  const _$EpubNavigationHeadMetaImpl({this.name, this.content, this.scheme});

  @override
  final String? name;
  @override
  final String? content;
  @override
  final String? scheme;

  @override
  String toString() {
    return 'EpubNavigationHeadMeta(name: $name, content: $content, scheme: $scheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationHeadMetaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.scheme, scheme) || other.scheme == scheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, content, scheme);

  /// Create a copy of EpubNavigationHeadMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationHeadMetaImplCopyWith<_$EpubNavigationHeadMetaImpl>
      get copyWith => __$$EpubNavigationHeadMetaImplCopyWithImpl<
          _$EpubNavigationHeadMetaImpl>(this, _$identity);
}

abstract class _EpubNavigationHeadMeta implements EpubNavigationHeadMeta {
  const factory _EpubNavigationHeadMeta(
      {final String? name,
      final String? content,
      final String? scheme}) = _$EpubNavigationHeadMetaImpl;

  @override
  String? get name;
  @override
  String? get content;
  @override
  String? get scheme;

  /// Create a copy of EpubNavigationHeadMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationHeadMetaImplCopyWith<_$EpubNavigationHeadMetaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
