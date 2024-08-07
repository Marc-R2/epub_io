// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_manifest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubManifest {
  List<EpubManifestItem> get items => throw _privateConstructorUsedError;

  /// Create a copy of EpubManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubManifestCopyWith<EpubManifest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubManifestCopyWith<$Res> {
  factory $EpubManifestCopyWith(
          EpubManifest value, $Res Function(EpubManifest) then) =
      _$EpubManifestCopyWithImpl<$Res, EpubManifest>;
  @useResult
  $Res call({List<EpubManifestItem> items});
}

/// @nodoc
class _$EpubManifestCopyWithImpl<$Res, $Val extends EpubManifest>
    implements $EpubManifestCopyWith<$Res> {
  _$EpubManifestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EpubManifestItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubManifestImplCopyWith<$Res>
    implements $EpubManifestCopyWith<$Res> {
  factory _$$EpubManifestImplCopyWith(
          _$EpubManifestImpl value, $Res Function(_$EpubManifestImpl) then) =
      __$$EpubManifestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EpubManifestItem> items});
}

/// @nodoc
class __$$EpubManifestImplCopyWithImpl<$Res>
    extends _$EpubManifestCopyWithImpl<$Res, _$EpubManifestImpl>
    implements _$$EpubManifestImplCopyWith<$Res> {
  __$$EpubManifestImplCopyWithImpl(
      _$EpubManifestImpl _value, $Res Function(_$EpubManifestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$EpubManifestImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EpubManifestItem>,
    ));
  }
}

/// @nodoc

class _$EpubManifestImpl extends _EpubManifest {
  const _$EpubManifestImpl(
      {final List<EpubManifestItem> items = const <EpubManifestItem>[]})
      : _items = items,
        super._();

  final List<EpubManifestItem> _items;
  @override
  @JsonKey()
  List<EpubManifestItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'EpubManifest(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubManifestImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of EpubManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubManifestImplCopyWith<_$EpubManifestImpl> get copyWith =>
      __$$EpubManifestImplCopyWithImpl<_$EpubManifestImpl>(this, _$identity);
}

abstract class _EpubManifest extends EpubManifest {
  const factory _EpubManifest({final List<EpubManifestItem> items}) =
      _$EpubManifestImpl;
  const _EpubManifest._() : super._();

  @override
  List<EpubManifestItem> get items;

  /// Create a copy of EpubManifest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubManifestImplCopyWith<_$EpubManifestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
