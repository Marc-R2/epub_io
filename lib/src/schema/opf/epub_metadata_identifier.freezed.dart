// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubMetadataIdentifier {
  String? get id => throw _privateConstructorUsedError;
  String? get scheme => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;

  /// Create a copy of EpubMetadataIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubMetadataIdentifierCopyWith<EpubMetadataIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubMetadataIdentifierCopyWith<$Res> {
  factory $EpubMetadataIdentifierCopyWith(EpubMetadataIdentifier value,
          $Res Function(EpubMetadataIdentifier) then) =
      _$EpubMetadataIdentifierCopyWithImpl<$Res, EpubMetadataIdentifier>;
  @useResult
  $Res call({String? id, String? scheme, String? identifier});
}

/// @nodoc
class _$EpubMetadataIdentifierCopyWithImpl<$Res,
        $Val extends EpubMetadataIdentifier>
    implements $EpubMetadataIdentifierCopyWith<$Res> {
  _$EpubMetadataIdentifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubMetadataIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scheme = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubMetadataIdentifierImplCopyWith<$Res>
    implements $EpubMetadataIdentifierCopyWith<$Res> {
  factory _$$EpubMetadataIdentifierImplCopyWith(
          _$EpubMetadataIdentifierImpl value,
          $Res Function(_$EpubMetadataIdentifierImpl) then) =
      __$$EpubMetadataIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? scheme, String? identifier});
}

/// @nodoc
class __$$EpubMetadataIdentifierImplCopyWithImpl<$Res>
    extends _$EpubMetadataIdentifierCopyWithImpl<$Res,
        _$EpubMetadataIdentifierImpl>
    implements _$$EpubMetadataIdentifierImplCopyWith<$Res> {
  __$$EpubMetadataIdentifierImplCopyWithImpl(
      _$EpubMetadataIdentifierImpl _value,
      $Res Function(_$EpubMetadataIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubMetadataIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scheme = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$EpubMetadataIdentifierImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubMetadataIdentifierImpl extends _EpubMetadataIdentifier {
  const _$EpubMetadataIdentifierImpl({this.id, this.scheme, this.identifier})
      : super._();

  @override
  final String? id;
  @override
  final String? scheme;
  @override
  final String? identifier;

  @override
  String toString() {
    return 'EpubMetadataIdentifier(id: $id, scheme: $scheme, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubMetadataIdentifierImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, scheme, identifier);

  /// Create a copy of EpubMetadataIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubMetadataIdentifierImplCopyWith<_$EpubMetadataIdentifierImpl>
      get copyWith => __$$EpubMetadataIdentifierImplCopyWithImpl<
          _$EpubMetadataIdentifierImpl>(this, _$identity);
}

abstract class _EpubMetadataIdentifier extends EpubMetadataIdentifier {
  const factory _EpubMetadataIdentifier(
      {final String? id,
      final String? scheme,
      final String? identifier}) = _$EpubMetadataIdentifierImpl;
  const _EpubMetadataIdentifier._() : super._();

  @override
  String? get id;
  @override
  String? get scheme;
  @override
  String? get identifier;

  /// Create a copy of EpubMetadataIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubMetadataIdentifierImplCopyWith<_$EpubMetadataIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}
