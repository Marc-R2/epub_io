// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_spine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubSpine {
  bool get ltr => throw _privateConstructorUsedError;
  String? get tableOfContents => throw _privateConstructorUsedError;
  List<EpubSpineItemRef> get items => throw _privateConstructorUsedError;

  /// Create a copy of EpubSpine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubSpineCopyWith<EpubSpine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubSpineCopyWith<$Res> {
  factory $EpubSpineCopyWith(EpubSpine value, $Res Function(EpubSpine) then) =
      _$EpubSpineCopyWithImpl<$Res, EpubSpine>;
  @useResult
  $Res call({bool ltr, String? tableOfContents, List<EpubSpineItemRef> items});
}

/// @nodoc
class _$EpubSpineCopyWithImpl<$Res, $Val extends EpubSpine>
    implements $EpubSpineCopyWith<$Res> {
  _$EpubSpineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubSpine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ltr = null,
    Object? tableOfContents = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      ltr: null == ltr
          ? _value.ltr
          : ltr // ignore: cast_nullable_to_non_nullable
              as bool,
      tableOfContents: freezed == tableOfContents
          ? _value.tableOfContents
          : tableOfContents // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EpubSpineItemRef>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubSpineImplCopyWith<$Res>
    implements $EpubSpineCopyWith<$Res> {
  factory _$$EpubSpineImplCopyWith(
          _$EpubSpineImpl value, $Res Function(_$EpubSpineImpl) then) =
      __$$EpubSpineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool ltr, String? tableOfContents, List<EpubSpineItemRef> items});
}

/// @nodoc
class __$$EpubSpineImplCopyWithImpl<$Res>
    extends _$EpubSpineCopyWithImpl<$Res, _$EpubSpineImpl>
    implements _$$EpubSpineImplCopyWith<$Res> {
  __$$EpubSpineImplCopyWithImpl(
      _$EpubSpineImpl _value, $Res Function(_$EpubSpineImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubSpine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ltr = null,
    Object? tableOfContents = freezed,
    Object? items = null,
  }) {
    return _then(_$EpubSpineImpl(
      ltr: null == ltr
          ? _value.ltr
          : ltr // ignore: cast_nullable_to_non_nullable
              as bool,
      tableOfContents: freezed == tableOfContents
          ? _value.tableOfContents
          : tableOfContents // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EpubSpineItemRef>,
    ));
  }
}

/// @nodoc

class _$EpubSpineImpl implements _EpubSpine {
  const _$EpubSpineImpl(
      {required this.ltr,
      this.tableOfContents,
      final List<EpubSpineItemRef> items = const <EpubSpineItemRef>[]})
      : _items = items;

  @override
  final bool ltr;
  @override
  final String? tableOfContents;
  final List<EpubSpineItemRef> _items;
  @override
  @JsonKey()
  List<EpubSpineItemRef> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'EpubSpine(ltr: $ltr, tableOfContents: $tableOfContents, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubSpineImpl &&
            (identical(other.ltr, ltr) || other.ltr == ltr) &&
            (identical(other.tableOfContents, tableOfContents) ||
                other.tableOfContents == tableOfContents) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ltr, tableOfContents,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of EpubSpine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubSpineImplCopyWith<_$EpubSpineImpl> get copyWith =>
      __$$EpubSpineImplCopyWithImpl<_$EpubSpineImpl>(this, _$identity);
}

abstract class _EpubSpine implements EpubSpine {
  const factory _EpubSpine(
      {required final bool ltr,
      final String? tableOfContents,
      final List<EpubSpineItemRef> items}) = _$EpubSpineImpl;

  @override
  bool get ltr;
  @override
  String? get tableOfContents;
  @override
  List<EpubSpineItemRef> get items;

  /// Create a copy of EpubSpine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubSpineImplCopyWith<_$EpubSpineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
