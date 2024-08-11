// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata_creator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubMetadataCreator {
  String get creator => throw _privateConstructorUsedError;
  String? get fileAs => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Create a copy of EpubMetadataCreator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubMetadataCreatorCopyWith<EpubMetadataCreator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubMetadataCreatorCopyWith<$Res> {
  factory $EpubMetadataCreatorCopyWith(
          EpubMetadataCreator value, $Res Function(EpubMetadataCreator) then) =
      _$EpubMetadataCreatorCopyWithImpl<$Res, EpubMetadataCreator>;
  @useResult
  $Res call({String creator, String? fileAs, String? role});
}

/// @nodoc
class _$EpubMetadataCreatorCopyWithImpl<$Res, $Val extends EpubMetadataCreator>
    implements $EpubMetadataCreatorCopyWith<$Res> {
  _$EpubMetadataCreatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubMetadataCreator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
    Object? fileAs = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EpubMetadataCreatorImplCopyWith<$Res>
    implements $EpubMetadataCreatorCopyWith<$Res> {
  factory _$$EpubMetadataCreatorImplCopyWith(_$EpubMetadataCreatorImpl value,
          $Res Function(_$EpubMetadataCreatorImpl) then) =
      __$$EpubMetadataCreatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String creator, String? fileAs, String? role});
}

/// @nodoc
class __$$EpubMetadataCreatorImplCopyWithImpl<$Res>
    extends _$EpubMetadataCreatorCopyWithImpl<$Res, _$EpubMetadataCreatorImpl>
    implements _$$EpubMetadataCreatorImplCopyWith<$Res> {
  __$$EpubMetadataCreatorImplCopyWithImpl(_$EpubMetadataCreatorImpl _value,
      $Res Function(_$EpubMetadataCreatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubMetadataCreator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
    Object? fileAs = freezed,
    Object? role = freezed,
  }) {
    return _then(_$EpubMetadataCreatorImpl(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
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

class _$EpubMetadataCreatorImpl implements _EpubMetadataCreator {
  const _$EpubMetadataCreatorImpl(
      {required this.creator, this.fileAs, this.role});

  @override
  final String creator;
  @override
  final String? fileAs;
  @override
  final String? role;

  @override
  String toString() {
    return 'EpubMetadataCreator(creator: $creator, fileAs: $fileAs, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubMetadataCreatorImpl &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.fileAs, fileAs) || other.fileAs == fileAs) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creator, fileAs, role);

  /// Create a copy of EpubMetadataCreator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubMetadataCreatorImplCopyWith<_$EpubMetadataCreatorImpl> get copyWith =>
      __$$EpubMetadataCreatorImplCopyWithImpl<_$EpubMetadataCreatorImpl>(
          this, _$identity);
}

abstract class _EpubMetadataCreator implements EpubMetadataCreator {
  const factory _EpubMetadataCreator(
      {required final String creator,
      final String? fileAs,
      final String? role}) = _$EpubMetadataCreatorImpl;

  @override
  String get creator;
  @override
  String? get fileAs;
  @override
  String? get role;

  /// Create a copy of EpubMetadataCreator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubMetadataCreatorImplCopyWith<_$EpubMetadataCreatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
