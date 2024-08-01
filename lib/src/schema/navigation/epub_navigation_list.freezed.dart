// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationList {
  String? get id => throw _privateConstructorUsedError;
  String? get classs => throw _privateConstructorUsedError;
  List<EpubNavigationLabel> get navigationLabels =>
      throw _privateConstructorUsedError;
  List<EpubNavigationTarget> get navigationTargets =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationListCopyWith<EpubNavigationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationListCopyWith<$Res> {
  factory $EpubNavigationListCopyWith(
          EpubNavigationList value, $Res Function(EpubNavigationList) then) =
      _$EpubNavigationListCopyWithImpl<$Res, EpubNavigationList>;
  @useResult
  $Res call(
      {String? id,
      String? classs,
      List<EpubNavigationLabel> navigationLabels,
      List<EpubNavigationTarget> navigationTargets});
}

/// @nodoc
class _$EpubNavigationListCopyWithImpl<$Res, $Val extends EpubNavigationList>
    implements $EpubNavigationListCopyWith<$Res> {
  _$EpubNavigationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classs = freezed,
    Object? navigationLabels = null,
    Object? navigationTargets = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationLabels: null == navigationLabels
          ? _value.navigationLabels
          : navigationLabels // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationLabel>,
      navigationTargets: null == navigationTargets
          ? _value.navigationTargets
          : navigationTargets // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationTarget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationListImplCopyWith<$Res>
    implements $EpubNavigationListCopyWith<$Res> {
  factory _$$EpubNavigationListImplCopyWith(_$EpubNavigationListImpl value,
          $Res Function(_$EpubNavigationListImpl) then) =
      __$$EpubNavigationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? classs,
      List<EpubNavigationLabel> navigationLabels,
      List<EpubNavigationTarget> navigationTargets});
}

/// @nodoc
class __$$EpubNavigationListImplCopyWithImpl<$Res>
    extends _$EpubNavigationListCopyWithImpl<$Res, _$EpubNavigationListImpl>
    implements _$$EpubNavigationListImplCopyWith<$Res> {
  __$$EpubNavigationListImplCopyWithImpl(_$EpubNavigationListImpl _value,
      $Res Function(_$EpubNavigationListImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classs = freezed,
    Object? navigationLabels = null,
    Object? navigationTargets = null,
  }) {
    return _then(_$EpubNavigationListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      classs: freezed == classs
          ? _value.classs
          : classs // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationLabels: null == navigationLabels
          ? _value._navigationLabels
          : navigationLabels // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationLabel>,
      navigationTargets: null == navigationTargets
          ? _value._navigationTargets
          : navigationTargets // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationTarget>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationListImpl implements _EpubNavigationList {
  const _$EpubNavigationListImpl(
      {this.id,
      this.classs,
      final List<EpubNavigationLabel> navigationLabels =
          const <EpubNavigationLabel>[],
      final List<EpubNavigationTarget> navigationTargets =
          const <EpubNavigationTarget>[]})
      : _navigationLabels = navigationLabels,
        _navigationTargets = navigationTargets;

  @override
  final String? id;
  @override
  final String? classs;
  final List<EpubNavigationLabel> _navigationLabels;
  @override
  @JsonKey()
  List<EpubNavigationLabel> get navigationLabels {
    if (_navigationLabels is EqualUnmodifiableListView)
      return _navigationLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navigationLabels);
  }

  final List<EpubNavigationTarget> _navigationTargets;
  @override
  @JsonKey()
  List<EpubNavigationTarget> get navigationTargets {
    if (_navigationTargets is EqualUnmodifiableListView)
      return _navigationTargets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navigationTargets);
  }

  @override
  String toString() {
    return 'EpubNavigationList(id: $id, classs: $classs, navigationLabels: $navigationLabels, navigationTargets: $navigationTargets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classs, classs) || other.classs == classs) &&
            const DeepCollectionEquality()
                .equals(other._navigationLabels, _navigationLabels) &&
            const DeepCollectionEquality()
                .equals(other._navigationTargets, _navigationTargets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      classs,
      const DeepCollectionEquality().hash(_navigationLabels),
      const DeepCollectionEquality().hash(_navigationTargets));

  /// Create a copy of EpubNavigationList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationListImplCopyWith<_$EpubNavigationListImpl> get copyWith =>
      __$$EpubNavigationListImplCopyWithImpl<_$EpubNavigationListImpl>(
          this, _$identity);
}

abstract class _EpubNavigationList implements EpubNavigationList {
  const factory _EpubNavigationList(
          {final String? id,
          final String? classs,
          final List<EpubNavigationLabel> navigationLabels,
          final List<EpubNavigationTarget> navigationTargets}) =
      _$EpubNavigationListImpl;

  @override
  String? get id;
  @override
  String? get classs;
  @override
  List<EpubNavigationLabel> get navigationLabels;
  @override
  List<EpubNavigationTarget> get navigationTargets;

  /// Create a copy of EpubNavigationList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationListImplCopyWith<_$EpubNavigationListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
