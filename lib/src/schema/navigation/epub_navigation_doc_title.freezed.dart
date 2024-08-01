// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_doc_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationDocTitle {
  List<String> get titles => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationDocTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationDocTitleCopyWith<EpubNavigationDocTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationDocTitleCopyWith<$Res> {
  factory $EpubNavigationDocTitleCopyWith(EpubNavigationDocTitle value,
          $Res Function(EpubNavigationDocTitle) then) =
      _$EpubNavigationDocTitleCopyWithImpl<$Res, EpubNavigationDocTitle>;
  @useResult
  $Res call({List<String> titles});
}

/// @nodoc
class _$EpubNavigationDocTitleCopyWithImpl<$Res,
        $Val extends EpubNavigationDocTitle>
    implements $EpubNavigationDocTitleCopyWith<$Res> {
  _$EpubNavigationDocTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationDocTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
  }) {
    return _then(_value.copyWith(
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationDocTitleImplCopyWith<$Res>
    implements $EpubNavigationDocTitleCopyWith<$Res> {
  factory _$$EpubNavigationDocTitleImplCopyWith(
          _$EpubNavigationDocTitleImpl value,
          $Res Function(_$EpubNavigationDocTitleImpl) then) =
      __$$EpubNavigationDocTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> titles});
}

/// @nodoc
class __$$EpubNavigationDocTitleImplCopyWithImpl<$Res>
    extends _$EpubNavigationDocTitleCopyWithImpl<$Res,
        _$EpubNavigationDocTitleImpl>
    implements _$$EpubNavigationDocTitleImplCopyWith<$Res> {
  __$$EpubNavigationDocTitleImplCopyWithImpl(
      _$EpubNavigationDocTitleImpl _value,
      $Res Function(_$EpubNavigationDocTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationDocTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
  }) {
    return _then(_$EpubNavigationDocTitleImpl(
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationDocTitleImpl implements _EpubNavigationDocTitle {
  const _$EpubNavigationDocTitleImpl(
      {final List<String> titles = const <String>[]})
      : _titles = titles;

  final List<String> _titles;
  @override
  @JsonKey()
  List<String> get titles {
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titles);
  }

  @override
  String toString() {
    return 'EpubNavigationDocTitle(titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationDocTitleImpl &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_titles));

  /// Create a copy of EpubNavigationDocTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationDocTitleImplCopyWith<_$EpubNavigationDocTitleImpl>
      get copyWith => __$$EpubNavigationDocTitleImplCopyWithImpl<
          _$EpubNavigationDocTitleImpl>(this, _$identity);
}

abstract class _EpubNavigationDocTitle implements EpubNavigationDocTitle {
  const factory _EpubNavigationDocTitle({final List<String> titles}) =
      _$EpubNavigationDocTitleImpl;

  @override
  List<String> get titles;

  /// Create a copy of EpubNavigationDocTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationDocTitleImplCopyWith<_$EpubNavigationDocTitleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
