// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_head.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationHead {
  List<EpubNavigationHeadMeta> get metadata =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationHeadCopyWith<EpubNavigationHead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationHeadCopyWith<$Res> {
  factory $EpubNavigationHeadCopyWith(
          EpubNavigationHead value, $Res Function(EpubNavigationHead) then) =
      _$EpubNavigationHeadCopyWithImpl<$Res, EpubNavigationHead>;
  @useResult
  $Res call({List<EpubNavigationHeadMeta> metadata});
}

/// @nodoc
class _$EpubNavigationHeadCopyWithImpl<$Res, $Val extends EpubNavigationHead>
    implements $EpubNavigationHeadCopyWith<$Res> {
  _$EpubNavigationHeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationHeadMeta>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationHeadImplCopyWith<$Res>
    implements $EpubNavigationHeadCopyWith<$Res> {
  factory _$$EpubNavigationHeadImplCopyWith(_$EpubNavigationHeadImpl value,
          $Res Function(_$EpubNavigationHeadImpl) then) =
      __$$EpubNavigationHeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EpubNavigationHeadMeta> metadata});
}

/// @nodoc
class __$$EpubNavigationHeadImplCopyWithImpl<$Res>
    extends _$EpubNavigationHeadCopyWithImpl<$Res, _$EpubNavigationHeadImpl>
    implements _$$EpubNavigationHeadImplCopyWith<$Res> {
  __$$EpubNavigationHeadImplCopyWithImpl(_$EpubNavigationHeadImpl _value,
      $Res Function(_$EpubNavigationHeadImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_$EpubNavigationHeadImpl(
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationHeadMeta>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationHeadImpl implements _EpubNavigationHead {
  const _$EpubNavigationHeadImpl(
      {final List<EpubNavigationHeadMeta> metadata =
          const <EpubNavigationHeadMeta>[]})
      : _metadata = metadata;

  final List<EpubNavigationHeadMeta> _metadata;
  @override
  @JsonKey()
  List<EpubNavigationHeadMeta> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
  }

  @override
  String toString() {
    return 'EpubNavigationHead(metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationHeadImpl &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of EpubNavigationHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationHeadImplCopyWith<_$EpubNavigationHeadImpl> get copyWith =>
      __$$EpubNavigationHeadImplCopyWithImpl<_$EpubNavigationHeadImpl>(
          this, _$identity);
}

abstract class _EpubNavigationHead implements EpubNavigationHead {
  const factory _EpubNavigationHead(
      {final List<EpubNavigationHeadMeta> metadata}) = _$EpubNavigationHeadImpl;

  @override
  List<EpubNavigationHeadMeta> get metadata;

  /// Create a copy of EpubNavigationHead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationHeadImplCopyWith<_$EpubNavigationHeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
