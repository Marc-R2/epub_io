// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubSchema {
  EpubContainer get epubContainer => throw _privateConstructorUsedError;
  EpubPackage? get package => throw _privateConstructorUsedError;
  EpubNavigation? get navigation => throw _privateConstructorUsedError;

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubSchemaCopyWith<EpubSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubSchemaCopyWith<$Res> {
  factory $EpubSchemaCopyWith(
          EpubSchema value, $Res Function(EpubSchema) then) =
      _$EpubSchemaCopyWithImpl<$Res, EpubSchema>;
  @useResult
  $Res call(
      {EpubContainer epubContainer,
      EpubPackage? package,
      EpubNavigation? navigation});

  $EpubContainerCopyWith<$Res> get epubContainer;
  $EpubPackageCopyWith<$Res>? get package;
  $EpubNavigationCopyWith<$Res>? get navigation;
}

/// @nodoc
class _$EpubSchemaCopyWithImpl<$Res, $Val extends EpubSchema>
    implements $EpubSchemaCopyWith<$Res> {
  _$EpubSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubContainer = null,
    Object? package = freezed,
    Object? navigation = freezed,
  }) {
    return _then(_value.copyWith(
      epubContainer: null == epubContainer
          ? _value.epubContainer
          : epubContainer // ignore: cast_nullable_to_non_nullable
              as EpubContainer,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as EpubPackage?,
      navigation: freezed == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as EpubNavigation?,
    ) as $Val);
  }

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubContainerCopyWith<$Res> get epubContainer {
    return $EpubContainerCopyWith<$Res>(_value.epubContainer, (value) {
      return _then(_value.copyWith(epubContainer: value) as $Val);
    });
  }

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubPackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $EpubPackageCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationCopyWith<$Res>? get navigation {
    if (_value.navigation == null) {
      return null;
    }

    return $EpubNavigationCopyWith<$Res>(_value.navigation!, (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubSchemaImplCopyWith<$Res>
    implements $EpubSchemaCopyWith<$Res> {
  factory _$$EpubSchemaImplCopyWith(
          _$EpubSchemaImpl value, $Res Function(_$EpubSchemaImpl) then) =
      __$$EpubSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EpubContainer epubContainer,
      EpubPackage? package,
      EpubNavigation? navigation});

  @override
  $EpubContainerCopyWith<$Res> get epubContainer;
  @override
  $EpubPackageCopyWith<$Res>? get package;
  @override
  $EpubNavigationCopyWith<$Res>? get navigation;
}

/// @nodoc
class __$$EpubSchemaImplCopyWithImpl<$Res>
    extends _$EpubSchemaCopyWithImpl<$Res, _$EpubSchemaImpl>
    implements _$$EpubSchemaImplCopyWith<$Res> {
  __$$EpubSchemaImplCopyWithImpl(
      _$EpubSchemaImpl _value, $Res Function(_$EpubSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubContainer = null,
    Object? package = freezed,
    Object? navigation = freezed,
  }) {
    return _then(_$EpubSchemaImpl(
      epubContainer: null == epubContainer
          ? _value.epubContainer
          : epubContainer // ignore: cast_nullable_to_non_nullable
              as EpubContainer,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as EpubPackage?,
      navigation: freezed == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as EpubNavigation?,
    ));
  }
}

/// @nodoc

class _$EpubSchemaImpl implements _EpubSchema {
  const _$EpubSchemaImpl(
      {required this.epubContainer, this.package, this.navigation});

  @override
  final EpubContainer epubContainer;
  @override
  final EpubPackage? package;
  @override
  final EpubNavigation? navigation;

  @override
  String toString() {
    return 'EpubSchema(epubContainer: $epubContainer, package: $package, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubSchemaImpl &&
            (identical(other.epubContainer, epubContainer) ||
                other.epubContainer == epubContainer) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, epubContainer, package, navigation);

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubSchemaImplCopyWith<_$EpubSchemaImpl> get copyWith =>
      __$$EpubSchemaImplCopyWithImpl<_$EpubSchemaImpl>(this, _$identity);
}

abstract class _EpubSchema implements EpubSchema {
  const factory _EpubSchema(
      {required final EpubContainer epubContainer,
      final EpubPackage? package,
      final EpubNavigation? navigation}) = _$EpubSchemaImpl;

  @override
  EpubContainer get epubContainer;
  @override
  EpubPackage? get package;
  @override
  EpubNavigation? get navigation;

  /// Create a copy of EpubSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubSchemaImplCopyWith<_$EpubSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
