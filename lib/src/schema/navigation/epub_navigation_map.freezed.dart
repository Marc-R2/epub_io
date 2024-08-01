// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationMap {
  List<EpubNavigationPoint> get points => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationMapCopyWith<EpubNavigationMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationMapCopyWith<$Res> {
  factory $EpubNavigationMapCopyWith(
          EpubNavigationMap value, $Res Function(EpubNavigationMap) then) =
      _$EpubNavigationMapCopyWithImpl<$Res, EpubNavigationMap>;
  @useResult
  $Res call({List<EpubNavigationPoint> points});
}

/// @nodoc
class _$EpubNavigationMapCopyWithImpl<$Res, $Val extends EpubNavigationMap>
    implements $EpubNavigationMapCopyWith<$Res> {
  _$EpubNavigationMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationMapImplCopyWith<$Res>
    implements $EpubNavigationMapCopyWith<$Res> {
  factory _$$EpubNavigationMapImplCopyWith(_$EpubNavigationMapImpl value,
          $Res Function(_$EpubNavigationMapImpl) then) =
      __$$EpubNavigationMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EpubNavigationPoint> points});
}

/// @nodoc
class __$$EpubNavigationMapImplCopyWithImpl<$Res>
    extends _$EpubNavigationMapCopyWithImpl<$Res, _$EpubNavigationMapImpl>
    implements _$$EpubNavigationMapImplCopyWith<$Res> {
  __$$EpubNavigationMapImplCopyWithImpl(_$EpubNavigationMapImpl _value,
      $Res Function(_$EpubNavigationMapImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$EpubNavigationMapImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationPoint>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationMapImpl implements _EpubNavigationMap {
  const _$EpubNavigationMapImpl(
      {final List<EpubNavigationPoint> points = const <EpubNavigationPoint>[]})
      : _points = points;

  final List<EpubNavigationPoint> _points;
  @override
  @JsonKey()
  List<EpubNavigationPoint> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'EpubNavigationMap(points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationMapImpl &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_points));

  /// Create a copy of EpubNavigationMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationMapImplCopyWith<_$EpubNavigationMapImpl> get copyWith =>
      __$$EpubNavigationMapImplCopyWithImpl<_$EpubNavigationMapImpl>(
          this, _$identity);
}

abstract class _EpubNavigationMap implements EpubNavigationMap {
  const factory _EpubNavigationMap({final List<EpubNavigationPoint> points}) =
      _$EpubNavigationMapImpl;

  @override
  List<EpubNavigationPoint> get points;

  /// Create a copy of EpubNavigationMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationMapImplCopyWith<_$EpubNavigationMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
