// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_doc_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationDocAuthor {
  List<String> get authors => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationDocAuthor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationDocAuthorCopyWith<EpubNavigationDocAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationDocAuthorCopyWith<$Res> {
  factory $EpubNavigationDocAuthorCopyWith(EpubNavigationDocAuthor value,
          $Res Function(EpubNavigationDocAuthor) then) =
      _$EpubNavigationDocAuthorCopyWithImpl<$Res, EpubNavigationDocAuthor>;
  @useResult
  $Res call({List<String> authors});
}

/// @nodoc
class _$EpubNavigationDocAuthorCopyWithImpl<$Res,
        $Val extends EpubNavigationDocAuthor>
    implements $EpubNavigationDocAuthorCopyWith<$Res> {
  _$EpubNavigationDocAuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationDocAuthor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authors = null,
  }) {
    return _then(_value.copyWith(
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationDocAuthorImplCopyWith<$Res>
    implements $EpubNavigationDocAuthorCopyWith<$Res> {
  factory _$$EpubNavigationDocAuthorImplCopyWith(
          _$EpubNavigationDocAuthorImpl value,
          $Res Function(_$EpubNavigationDocAuthorImpl) then) =
      __$$EpubNavigationDocAuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> authors});
}

/// @nodoc
class __$$EpubNavigationDocAuthorImplCopyWithImpl<$Res>
    extends _$EpubNavigationDocAuthorCopyWithImpl<$Res,
        _$EpubNavigationDocAuthorImpl>
    implements _$$EpubNavigationDocAuthorImplCopyWith<$Res> {
  __$$EpubNavigationDocAuthorImplCopyWithImpl(
      _$EpubNavigationDocAuthorImpl _value,
      $Res Function(_$EpubNavigationDocAuthorImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationDocAuthor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authors = null,
  }) {
    return _then(_$EpubNavigationDocAuthorImpl(
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationDocAuthorImpl implements _EpubNavigationDocAuthor {
  const _$EpubNavigationDocAuthorImpl(
      {final List<String> authors = const <String>[]})
      : _authors = authors;

  final List<String> _authors;
  @override
  @JsonKey()
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  String toString() {
    return 'EpubNavigationDocAuthor(authors: $authors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationDocAuthorImpl &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_authors));

  /// Create a copy of EpubNavigationDocAuthor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationDocAuthorImplCopyWith<_$EpubNavigationDocAuthorImpl>
      get copyWith => __$$EpubNavigationDocAuthorImplCopyWithImpl<
          _$EpubNavigationDocAuthorImpl>(this, _$identity);
}

abstract class _EpubNavigationDocAuthor implements EpubNavigationDocAuthor {
  const factory _EpubNavigationDocAuthor({final List<String> authors}) =
      _$EpubNavigationDocAuthorImpl;

  @override
  List<String> get authors;

  /// Create a copy of EpubNavigationDocAuthor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationDocAuthorImplCopyWith<_$EpubNavigationDocAuthorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
