// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_guide_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpubGuideReference _$EpubGuideReferenceFromJson(Map<String, dynamic> json) {
  return _EpubGuideReference.fromJson(json);
}

/// @nodoc
mixin _$EpubGuideReference {
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;

  /// Serializes this EpubGuideReference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpubGuideReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubGuideReferenceCopyWith<EpubGuideReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubGuideReferenceCopyWith<$Res> {
  factory $EpubGuideReferenceCopyWith(
          EpubGuideReference value, $Res Function(EpubGuideReference) then) =
      _$EpubGuideReferenceCopyWithImpl<$Res, EpubGuideReference>;
  @useResult
  $Res call({String? type, String? title, String? href});
}

/// @nodoc
class _$EpubGuideReferenceCopyWithImpl<$Res, $Val extends EpubGuideReference>
    implements $EpubGuideReferenceCopyWith<$Res> {
  _$EpubGuideReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubGuideReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubGuideReferenceImplCopyWith<$Res>
    implements $EpubGuideReferenceCopyWith<$Res> {
  factory _$$EpubGuideReferenceImplCopyWith(_$EpubGuideReferenceImpl value,
          $Res Function(_$EpubGuideReferenceImpl) then) =
      __$$EpubGuideReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? title, String? href});
}

/// @nodoc
class __$$EpubGuideReferenceImplCopyWithImpl<$Res>
    extends _$EpubGuideReferenceCopyWithImpl<$Res, _$EpubGuideReferenceImpl>
    implements _$$EpubGuideReferenceImplCopyWith<$Res> {
  __$$EpubGuideReferenceImplCopyWithImpl(_$EpubGuideReferenceImpl _value,
      $Res Function(_$EpubGuideReferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubGuideReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? href = freezed,
  }) {
    return _then(_$EpubGuideReferenceImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpubGuideReferenceImpl extends _EpubGuideReference {
  const _$EpubGuideReferenceImpl({this.type, this.title, this.href})
      : super._();

  factory _$EpubGuideReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpubGuideReferenceImplFromJson(json);

  @override
  final String? type;
  @override
  final String? title;
  @override
  final String? href;

  @override
  String toString() {
    return 'EpubGuideReference(type: $type, title: $title, href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubGuideReferenceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, href);

  /// Create a copy of EpubGuideReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubGuideReferenceImplCopyWith<_$EpubGuideReferenceImpl> get copyWith =>
      __$$EpubGuideReferenceImplCopyWithImpl<_$EpubGuideReferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpubGuideReferenceImplToJson(
      this,
    );
  }
}

abstract class _EpubGuideReference extends EpubGuideReference {
  const factory _EpubGuideReference(
      {final String? type,
      final String? title,
      final String? href}) = _$EpubGuideReferenceImpl;
  const _EpubGuideReference._() : super._();

  factory _EpubGuideReference.fromJson(Map<String, dynamic> json) =
      _$EpubGuideReferenceImpl.fromJson;

  @override
  String? get type;
  @override
  String? get title;
  @override
  String? get href;

  /// Create a copy of EpubGuideReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubGuideReferenceImplCopyWith<_$EpubGuideReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
