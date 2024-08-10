// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationPoint {
  List<EpubNavigationLabel> get navigationLabels =>
      throw _privateConstructorUsedError;
  EpubNavigationContent get content => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get classs => throw _privateConstructorUsedError;
  String? get playOrder => throw _privateConstructorUsedError;
  List<EpubNavigationPoint> get childNavigationPoints =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationPointCopyWith<EpubNavigationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationPointCopyWith<$Res> {
  factory $EpubNavigationPointCopyWith(
          EpubNavigationPoint value, $Res Function(EpubNavigationPoint) then) =
      _$EpubNavigationPointCopyWithImpl<$Res, EpubNavigationPoint>;
  @useResult
  $Res call(
      {List<EpubNavigationLabel> navigationLabels,
      EpubNavigationContent content,
      String? id,
      String? classs,
      String? playOrder,
      List<EpubNavigationPoint> childNavigationPoints});

  $EpubNavigationContentCopyWith<$Res> get content;
}

/// @nodoc
class _$EpubNavigationPointCopyWithImpl<$Res, $Val extends EpubNavigationPoint>
    implements $EpubNavigationPointCopyWith<$Res> {
  _$EpubNavigationPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationLabels = null,
    Object? content = null,
    Object? id = freezed,
    Object? classs = freezed,
    Object? playOrder = freezed,
    Object? childNavigationPoints = null,
  }) {
    return _then(_value.copyWith(
      navigationLabels: null == navigationLabels
          ? _value.navigationLabels
          : navigationLabels // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationLabel>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubNavigationContent,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      playOrder: freezed == playOrder
          ? _value.playOrder
          : playOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      childNavigationPoints: null == childNavigationPoints
          ? _value.childNavigationPoints
          : childNavigationPoints // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationPoint>,
    ) as $Val);
  }

  /// Create a copy of EpubNavigationPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationContentCopyWith<$Res> get content {
    return $EpubNavigationContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubNavigationPointImplCopyWith<$Res>
    implements $EpubNavigationPointCopyWith<$Res> {
  factory _$$EpubNavigationPointImplCopyWith(_$EpubNavigationPointImpl value,
          $Res Function(_$EpubNavigationPointImpl) then) =
      __$$EpubNavigationPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EpubNavigationLabel> navigationLabels,
      EpubNavigationContent content,
      String? id,
      String? classs,
      String? playOrder,
      List<EpubNavigationPoint> childNavigationPoints});

  @override
  $EpubNavigationContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$EpubNavigationPointImplCopyWithImpl<$Res>
    extends _$EpubNavigationPointCopyWithImpl<$Res, _$EpubNavigationPointImpl>
    implements _$$EpubNavigationPointImplCopyWith<$Res> {
  __$$EpubNavigationPointImplCopyWithImpl(_$EpubNavigationPointImpl _value,
      $Res Function(_$EpubNavigationPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationLabels = null,
    Object? content = null,
    Object? id = freezed,
    Object? classs = freezed,
    Object? playOrder = freezed,
    Object? childNavigationPoints = null,
  }) {
    return _then(_$EpubNavigationPointImpl(
      navigationLabels: null == navigationLabels
          ? _value._navigationLabels
          : navigationLabels // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationLabel>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubNavigationContent,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      playOrder: freezed == playOrder
          ? _value.playOrder
          : playOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      childNavigationPoints: null == childNavigationPoints
          ? _value._childNavigationPoints
          : childNavigationPoints // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationPoint>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationPointImpl implements _EpubNavigationPoint {
  const _$EpubNavigationPointImpl(
      {required final List<EpubNavigationLabel> navigationLabels,
      required this.content,
      this.id,
      this.classs,
      this.playOrder,
      final List<EpubNavigationPoint> childNavigationPoints = const []})
      : _navigationLabels = navigationLabels,
        _childNavigationPoints = childNavigationPoints;

  final List<EpubNavigationLabel> _navigationLabels;
  @override
  List<EpubNavigationLabel> get navigationLabels {
    if (_navigationLabels is EqualUnmodifiableListView)
      return _navigationLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navigationLabels);
  }

  @override
  final EpubNavigationContent content;
  @override
  final String? id;
  @override
  final String? classs;
  @override
  final String? playOrder;
  final List<EpubNavigationPoint> _childNavigationPoints;
  @override
  @JsonKey()
  List<EpubNavigationPoint> get childNavigationPoints {
    if (_childNavigationPoints is EqualUnmodifiableListView)
      return _childNavigationPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childNavigationPoints);
  }

  @override
  String toString() {
    return 'EpubNavigationPoint(navigationLabels: $navigationLabels, content: $content, id: $id, classs: $classs, playOrder: $playOrder, childNavigationPoints: $childNavigationPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationPointImpl &&
            const DeepCollectionEquality()
                .equals(other._navigationLabels, _navigationLabels) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classs, classs) || other.classs == classs) &&
            (identical(other.playOrder, playOrder) ||
                other.playOrder == playOrder) &&
            const DeepCollectionEquality()
                .equals(other._childNavigationPoints, _childNavigationPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_navigationLabels),
      content,
      id,
      classs,
      playOrder,
      const DeepCollectionEquality().hash(_childNavigationPoints));

  /// Create a copy of EpubNavigationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationPointImplCopyWith<_$EpubNavigationPointImpl> get copyWith =>
      __$$EpubNavigationPointImplCopyWithImpl<_$EpubNavigationPointImpl>(
          this, _$identity);
}

abstract class _EpubNavigationPoint implements EpubNavigationPoint {
  const factory _EpubNavigationPoint(
          {required final List<EpubNavigationLabel> navigationLabels,
          required final EpubNavigationContent content,
          final String? id,
          final String? classs,
          final String? playOrder,
          final List<EpubNavigationPoint> childNavigationPoints}) =
      _$EpubNavigationPointImpl;

  @override
  List<EpubNavigationLabel> get navigationLabels;
  @override
  EpubNavigationContent get content;
  @override
  String? get id;
  @override
  String? get classs;
  @override
  String? get playOrder;
  @override
  List<EpubNavigationPoint> get childNavigationPoints;

  /// Create a copy of EpubNavigationPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationPointImplCopyWith<_$EpubNavigationPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
