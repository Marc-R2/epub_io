// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_metadata_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubMetadataDate {
  String get date => throw _privateConstructorUsedError;
  String? get event => throw _privateConstructorUsedError;

  /// Create a copy of EpubMetadataDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubMetadataDateCopyWith<EpubMetadataDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubMetadataDateCopyWith<$Res> {
  factory $EpubMetadataDateCopyWith(
          EpubMetadataDate value, $Res Function(EpubMetadataDate) then) =
      _$EpubMetadataDateCopyWithImpl<$Res, EpubMetadataDate>;
  @useResult
  $Res call({String date, String? event});
}

/// @nodoc
class _$EpubMetadataDateCopyWithImpl<$Res, $Val extends EpubMetadataDate>
    implements $EpubMetadataDateCopyWith<$Res> {
  _$EpubMetadataDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubMetadataDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubMetadataDateImplCopyWith<$Res>
    implements $EpubMetadataDateCopyWith<$Res> {
  factory _$$EpubMetadataDateImplCopyWith(_$EpubMetadataDateImpl value,
          $Res Function(_$EpubMetadataDateImpl) then) =
      __$$EpubMetadataDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String? event});
}

/// @nodoc
class __$$EpubMetadataDateImplCopyWithImpl<$Res>
    extends _$EpubMetadataDateCopyWithImpl<$Res, _$EpubMetadataDateImpl>
    implements _$$EpubMetadataDateImplCopyWith<$Res> {
  __$$EpubMetadataDateImplCopyWithImpl(_$EpubMetadataDateImpl _value,
      $Res Function(_$EpubMetadataDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubMetadataDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? event = freezed,
  }) {
    return _then(_$EpubMetadataDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubMetadataDateImpl extends _EpubMetadataDate {
  const _$EpubMetadataDateImpl({required this.date, this.event}) : super._();

  @override
  final String date;
  @override
  final String? event;

  @override
  String toString() {
    return 'EpubMetadataDate(date: $date, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubMetadataDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, event);

  /// Create a copy of EpubMetadataDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubMetadataDateImplCopyWith<_$EpubMetadataDateImpl> get copyWith =>
      __$$EpubMetadataDateImplCopyWithImpl<_$EpubMetadataDateImpl>(
          this, _$identity);
}

abstract class _EpubMetadataDate extends EpubMetadataDate {
  const factory _EpubMetadataDate(
      {required final String date,
      final String? event}) = _$EpubMetadataDateImpl;
  const _EpubMetadataDate._() : super._();

  @override
  String get date;
  @override
  String? get event;

  /// Create a copy of EpubMetadataDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubMetadataDateImplCopyWith<_$EpubMetadataDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
