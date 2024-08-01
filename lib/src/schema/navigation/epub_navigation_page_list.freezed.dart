// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_page_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationPageList {
  List<EpubNavigationPageTarget> get targets =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationPageList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationPageListCopyWith<EpubNavigationPageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationPageListCopyWith<$Res> {
  factory $EpubNavigationPageListCopyWith(EpubNavigationPageList value,
          $Res Function(EpubNavigationPageList) then) =
      _$EpubNavigationPageListCopyWithImpl<$Res, EpubNavigationPageList>;
  @useResult
  $Res call({List<EpubNavigationPageTarget> targets});
}

/// @nodoc
class _$EpubNavigationPageListCopyWithImpl<$Res,
        $Val extends EpubNavigationPageList>
    implements $EpubNavigationPageListCopyWith<$Res> {
  _$EpubNavigationPageListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationPageList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targets = null,
  }) {
    return _then(_value.copyWith(
      targets: null == targets
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationPageTarget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationPageListImplCopyWith<$Res>
    implements $EpubNavigationPageListCopyWith<$Res> {
  factory _$$EpubNavigationPageListImplCopyWith(
          _$EpubNavigationPageListImpl value,
          $Res Function(_$EpubNavigationPageListImpl) then) =
      __$$EpubNavigationPageListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EpubNavigationPageTarget> targets});
}

/// @nodoc
class __$$EpubNavigationPageListImplCopyWithImpl<$Res>
    extends _$EpubNavigationPageListCopyWithImpl<$Res,
        _$EpubNavigationPageListImpl>
    implements _$$EpubNavigationPageListImplCopyWith<$Res> {
  __$$EpubNavigationPageListImplCopyWithImpl(
      _$EpubNavigationPageListImpl _value,
      $Res Function(_$EpubNavigationPageListImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationPageList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targets = null,
  }) {
    return _then(_$EpubNavigationPageListImpl(
      targets: null == targets
          ? _value._targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationPageTarget>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationPageListImpl implements _EpubNavigationPageList {
  const _$EpubNavigationPageListImpl(
      {final List<EpubNavigationPageTarget> targets =
          const <EpubNavigationPageTarget>[]})
      : _targets = targets;

  final List<EpubNavigationPageTarget> _targets;
  @override
  @JsonKey()
  List<EpubNavigationPageTarget> get targets {
    if (_targets is EqualUnmodifiableListView) return _targets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targets);
  }

  @override
  String toString() {
    return 'EpubNavigationPageList(targets: $targets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationPageListImpl &&
            const DeepCollectionEquality().equals(other._targets, _targets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_targets));

  /// Create a copy of EpubNavigationPageList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationPageListImplCopyWith<_$EpubNavigationPageListImpl>
      get copyWith => __$$EpubNavigationPageListImplCopyWithImpl<
          _$EpubNavigationPageListImpl>(this, _$identity);
}

abstract class _EpubNavigationPageList implements EpubNavigationPageList {
  const factory _EpubNavigationPageList(
          {final List<EpubNavigationPageTarget> targets}) =
      _$EpubNavigationPageListImpl;

  @override
  List<EpubNavigationPageTarget> get targets;

  /// Create a copy of EpubNavigationPageList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationPageListImplCopyWith<_$EpubNavigationPageListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
