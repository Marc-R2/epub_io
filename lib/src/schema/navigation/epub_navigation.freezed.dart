// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_navigation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubNavigation {
  EpubNavigationHead? get head => throw _privateConstructorUsedError;
  EpubNavigationDocTitle? get docTitle => throw _privateConstructorUsedError;
  List<EpubNavigationDocAuthor> get docAuthors =>
      throw _privateConstructorUsedError;
  EpubNavigationMap? get navMap => throw _privateConstructorUsedError;
  EpubNavigationPageList? get pageList => throw _privateConstructorUsedError;
  List<EpubNavigationList> get navLists => throw _privateConstructorUsedError;

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubNavigationCopyWith<EpubNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubNavigationCopyWith<$Res> {
  factory $EpubNavigationCopyWith(
          EpubNavigation value, $Res Function(EpubNavigation) then) =
      _$EpubNavigationCopyWithImpl<$Res, EpubNavigation>;
  @useResult
  $Res call(
      {EpubNavigationHead? head,
      EpubNavigationDocTitle? docTitle,
      List<EpubNavigationDocAuthor> docAuthors,
      EpubNavigationMap? navMap,
      EpubNavigationPageList? pageList,
      List<EpubNavigationList> navLists});

  $EpubNavigationHeadCopyWith<$Res>? get head;
  $EpubNavigationDocTitleCopyWith<$Res>? get docTitle;
  $EpubNavigationMapCopyWith<$Res>? get navMap;
  $EpubNavigationPageListCopyWith<$Res>? get pageList;
}

/// @nodoc
class _$EpubNavigationCopyWithImpl<$Res, $Val extends EpubNavigation>
    implements $EpubNavigationCopyWith<$Res> {
  _$EpubNavigationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = freezed,
    Object? docTitle = freezed,
    Object? docAuthors = null,
    Object? navMap = freezed,
    Object? pageList = freezed,
    Object? navLists = null,
  }) {
    return _then(_value.copyWith(
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as EpubNavigationHead?,
      docTitle: freezed == docTitle
          ? _value.docTitle
          : docTitle // ignore: cast_nullable_to_non_nullable
              as EpubNavigationDocTitle?,
      docAuthors: null == docAuthors
          ? _value.docAuthors
          : docAuthors // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationDocAuthor>,
      navMap: freezed == navMap
          ? _value.navMap
          : navMap // ignore: cast_nullable_to_non_nullable
              as EpubNavigationMap?,
      pageList: freezed == pageList
          ? _value.pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as EpubNavigationPageList?,
      navLists: null == navLists
          ? _value.navLists
          : navLists // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationList>,
    ) as $Val);
  }

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationHeadCopyWith<$Res>? get head {
    if (_value.head == null) {
      return null;
    }

    return $EpubNavigationHeadCopyWith<$Res>(_value.head!, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationDocTitleCopyWith<$Res>? get docTitle {
    if (_value.docTitle == null) {
      return null;
    }

    return $EpubNavigationDocTitleCopyWith<$Res>(_value.docTitle!, (value) {
      return _then(_value.copyWith(docTitle: value) as $Val);
    });
  }

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationMapCopyWith<$Res>? get navMap {
    if (_value.navMap == null) {
      return null;
    }

    return $EpubNavigationMapCopyWith<$Res>(_value.navMap!, (value) {
      return _then(_value.copyWith(navMap: value) as $Val);
    });
  }

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationPageListCopyWith<$Res>? get pageList {
    if (_value.pageList == null) {
      return null;
    }

    return $EpubNavigationPageListCopyWith<$Res>(_value.pageList!, (value) {
      return _then(_value.copyWith(pageList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubNavigationImplCopyWith<$Res>
    implements $EpubNavigationCopyWith<$Res> {
  factory _$$EpubNavigationImplCopyWith(_$EpubNavigationImpl value,
          $Res Function(_$EpubNavigationImpl) then) =
      __$$EpubNavigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EpubNavigationHead? head,
      EpubNavigationDocTitle? docTitle,
      List<EpubNavigationDocAuthor> docAuthors,
      EpubNavigationMap? navMap,
      EpubNavigationPageList? pageList,
      List<EpubNavigationList> navLists});

  @override
  $EpubNavigationHeadCopyWith<$Res>? get head;
  @override
  $EpubNavigationDocTitleCopyWith<$Res>? get docTitle;
  @override
  $EpubNavigationMapCopyWith<$Res>? get navMap;
  @override
  $EpubNavigationPageListCopyWith<$Res>? get pageList;
}

/// @nodoc
class __$$EpubNavigationImplCopyWithImpl<$Res>
    extends _$EpubNavigationCopyWithImpl<$Res, _$EpubNavigationImpl>
    implements _$$EpubNavigationImplCopyWith<$Res> {
  __$$EpubNavigationImplCopyWithImpl(
      _$EpubNavigationImpl _value, $Res Function(_$EpubNavigationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = freezed,
    Object? docTitle = freezed,
    Object? docAuthors = null,
    Object? navMap = freezed,
    Object? pageList = freezed,
    Object? navLists = null,
  }) {
    return _then(_$EpubNavigationImpl(
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as EpubNavigationHead?,
      docTitle: freezed == docTitle
          ? _value.docTitle
          : docTitle // ignore: cast_nullable_to_non_nullable
              as EpubNavigationDocTitle?,
      docAuthors: null == docAuthors
          ? _value._docAuthors
          : docAuthors // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationDocAuthor>,
      navMap: freezed == navMap
          ? _value.navMap
          : navMap // ignore: cast_nullable_to_non_nullable
              as EpubNavigationMap?,
      pageList: freezed == pageList
          ? _value.pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as EpubNavigationPageList?,
      navLists: null == navLists
          ? _value._navLists
          : navLists // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationList>,
    ));
  }
}

/// @nodoc

class _$EpubNavigationImpl implements _EpubNavigation {
  const _$EpubNavigationImpl(
      {this.head,
      this.docTitle,
      final List<EpubNavigationDocAuthor> docAuthors =
          const <EpubNavigationDocAuthor>[],
      this.navMap,
      this.pageList,
      final List<EpubNavigationList> navLists = const <EpubNavigationList>[]})
      : _docAuthors = docAuthors,
        _navLists = navLists;

  @override
  final EpubNavigationHead? head;
  @override
  final EpubNavigationDocTitle? docTitle;
  final List<EpubNavigationDocAuthor> _docAuthors;
  @override
  @JsonKey()
  List<EpubNavigationDocAuthor> get docAuthors {
    if (_docAuthors is EqualUnmodifiableListView) return _docAuthors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docAuthors);
  }

  @override
  final EpubNavigationMap? navMap;
  @override
  final EpubNavigationPageList? pageList;
  final List<EpubNavigationList> _navLists;
  @override
  @JsonKey()
  List<EpubNavigationList> get navLists {
    if (_navLists is EqualUnmodifiableListView) return _navLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navLists);
  }

  @override
  String toString() {
    return 'EpubNavigation(head: $head, docTitle: $docTitle, docAuthors: $docAuthors, navMap: $navMap, pageList: $pageList, navLists: $navLists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationImpl &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.docTitle, docTitle) ||
                other.docTitle == docTitle) &&
            const DeepCollectionEquality()
                .equals(other._docAuthors, _docAuthors) &&
            (identical(other.navMap, navMap) || other.navMap == navMap) &&
            (identical(other.pageList, pageList) ||
                other.pageList == pageList) &&
            const DeepCollectionEquality().equals(other._navLists, _navLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      head,
      docTitle,
      const DeepCollectionEquality().hash(_docAuthors),
      navMap,
      pageList,
      const DeepCollectionEquality().hash(_navLists));

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubNavigationImplCopyWith<_$EpubNavigationImpl> get copyWith =>
      __$$EpubNavigationImplCopyWithImpl<_$EpubNavigationImpl>(
          this, _$identity);
}

abstract class _EpubNavigation implements EpubNavigation {
  const factory _EpubNavigation(
      {final EpubNavigationHead? head,
      final EpubNavigationDocTitle? docTitle,
      final List<EpubNavigationDocAuthor> docAuthors,
      final EpubNavigationMap? navMap,
      final EpubNavigationPageList? pageList,
      final List<EpubNavigationList> navLists}) = _$EpubNavigationImpl;

  @override
  EpubNavigationHead? get head;
  @override
  EpubNavigationDocTitle? get docTitle;
  @override
  List<EpubNavigationDocAuthor> get docAuthors;
  @override
  EpubNavigationMap? get navMap;
  @override
  EpubNavigationPageList? get pageList;
  @override
  List<EpubNavigationList> get navLists;

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubNavigationImplCopyWith<_$EpubNavigationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
