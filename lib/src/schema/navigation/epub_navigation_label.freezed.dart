// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigationLabel {
  String? get text => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigationLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationLabelCopyWith<EpubNavigationLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationLabelCopyWith<$Res> {
  factory $EpubNavigationLabelCopyWith(
          EpubNavigationLabel value, $Res Function(EpubNavigationLabel) then) =
      _$EpubNavigationLabelCopyWithImpl<$Res, EpubNavigationLabel>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class _$EpubNavigationLabelCopyWithImpl<$Res, $Val extends EpubNavigationLabel>
    implements $EpubNavigationLabelCopyWith<$Res> {
  _$EpubNavigationLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigationLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubNavigationLabelImplCopyWith<$Res>
    implements $EpubNavigationLabelCopyWith<$Res> {
  factory _$$EpubNavigationLabelImplCopyWith(_$EpubNavigationLabelImpl value,
          $Res Function(_$EpubNavigationLabelImpl) then) =
      __$$EpubNavigationLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$EpubNavigationLabelImplCopyWithImpl<$Res>
    extends _$EpubNavigationLabelCopyWithImpl<$Res, _$EpubNavigationLabelImpl>
    implements _$$EpubNavigationLabelImplCopyWith<$Res> {
  __$$EpubNavigationLabelImplCopyWithImpl(_$EpubNavigationLabelImpl _value,
      $Res Function(_$EpubNavigationLabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigationLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$EpubNavigationLabelImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubNavigationLabelImpl implements _EpubNavigationLabel {
  const _$EpubNavigationLabelImpl({this.text});

  @override
  final String? text;

  @override
  String toString() {
    return 'EpubNavigationLabel(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationLabelImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of EpubNavigationLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationLabelImplCopyWith<_$EpubNavigationLabelImpl> get copyWith =>
      __$$EpubNavigationLabelImplCopyWithImpl<_$EpubNavigationLabelImpl>(
          this, _$identity);
}

abstract class _EpubNavigationLabel implements EpubNavigationLabel {
  const factory _EpubNavigationLabel({final String? text}) =
      _$EpubNavigationLabelImpl;

  @override
  String? get text;

  /// Create a copy of EpubNavigationLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationLabelImplCopyWith<_$EpubNavigationLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
