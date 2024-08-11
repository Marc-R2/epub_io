// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata_contributor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubMetadataContributor {
  String get contributor => throw _privateConstructorUsedError;
  String? get fileAs => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Create a copy of EpubMetadataContributor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubMetadataContributorCopyWith<EpubMetadataContributor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubMetadataContributorCopyWith<$Res> {
  factory $EpubMetadataContributorCopyWith(EpubMetadataContributor value,
          $Res Function(EpubMetadataContributor) then) =
      _$EpubMetadataContributorCopyWithImpl<$Res, EpubMetadataContributor>;
  @useResult
  $Res call({String contributor, String? fileAs, String? role});
}

/// @nodoc
class _$EpubMetadataContributorCopyWithImpl<$Res,
        $Val extends EpubMetadataContributor>
    implements $EpubMetadataContributorCopyWith<$Res> {
  _$EpubMetadataContributorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubMetadataContributor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contributor = null,
    Object? fileAs = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      contributor: null == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as String,
      fileAs: freezed == fileAs
          ? _value.fileAs
          : fileAs // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubMetadataContributorImplCopyWith<$Res>
    implements $EpubMetadataContributorCopyWith<$Res> {
  factory _$$EpubMetadataContributorImplCopyWith(
          _$EpubMetadataContributorImpl value,
          $Res Function(_$EpubMetadataContributorImpl) then) =
      __$$EpubMetadataContributorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contributor, String? fileAs, String? role});
}

/// @nodoc
class __$$EpubMetadataContributorImplCopyWithImpl<$Res>
    extends _$EpubMetadataContributorCopyWithImpl<$Res,
        _$EpubMetadataContributorImpl>
    implements _$$EpubMetadataContributorImplCopyWith<$Res> {
  __$$EpubMetadataContributorImplCopyWithImpl(
      _$EpubMetadataContributorImpl _value,
      $Res Function(_$EpubMetadataContributorImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubMetadataContributor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contributor = null,
    Object? fileAs = freezed,
    Object? role = freezed,
  }) {
    return _then(_$EpubMetadataContributorImpl(
      contributor: null == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as String,
      fileAs: freezed == fileAs
          ? _value.fileAs
          : fileAs // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubMetadataContributorImpl implements _EpubMetadataContributor {
  const _$EpubMetadataContributorImpl(
      {required this.contributor, this.fileAs, this.role});

  @override
  final String contributor;
  @override
  final String? fileAs;
  @override
  final String? role;

  @override
  String toString() {
    return 'EpubMetadataContributor(contributor: $contributor, fileAs: $fileAs, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubMetadataContributorImpl &&
            (identical(other.contributor, contributor) ||
                other.contributor == contributor) &&
            (identical(other.fileAs, fileAs) || other.fileAs == fileAs) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contributor, fileAs, role);

  /// Create a copy of EpubMetadataContributor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubMetadataContributorImplCopyWith<_$EpubMetadataContributorImpl>
      get copyWith => __$$EpubMetadataContributorImplCopyWithImpl<
          _$EpubMetadataContributorImpl>(this, _$identity);
}

abstract class _EpubMetadataContributor implements EpubMetadataContributor {
  const factory _EpubMetadataContributor(
      {required final String contributor,
      final String? fileAs,
      final String? role}) = _$EpubMetadataContributorImpl;

  @override
  String get contributor;
  @override
  String? get fileAs;
  @override
  String? get role;

  /// Create a copy of EpubMetadataContributor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubMetadataContributorImplCopyWith<_$EpubMetadataContributorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
