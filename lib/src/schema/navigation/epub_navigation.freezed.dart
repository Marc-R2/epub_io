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
  EpubNavigationDocTitle get docTitle => throw _privateConstructorUsedError;
  EpubNavigationMap get navMap => throw _privateConstructorUsedError;
  EpubNavigationHead? get head => throw _privateConstructorUsedError;
  List<EpubNavigationDocAuthor> get docAuthors =>
      throw _privateConstructorUsedError;
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
      {EpubNavigationDocTitle docTitle,
      EpubNavigationMap navMap,
      EpubNavigationHead? head,
      List<EpubNavigationDocAuthor> docAuthors,
      EpubNavigationPageList? pageList,
      List<EpubNavigationList> navLists});

  $EpubNavigationDocTitleCopyWith<$Res> get docTitle;
  $EpubNavigationMapCopyWith<$Res> get navMap;
  $EpubNavigationHeadCopyWith<$Res>? get head;
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
    Object? docTitle = null,
    Object? navMap = null,
    Object? head = freezed,
    Object? docAuthors = null,
    Object? pageList = freezed,
    Object? navLists = null,
  }) {
    return _then(_value.copyWith(
      docTitle: null == docTitle
          ? _value.docTitle
          : docTitle // ignore: cast_nullable_to_non_nullable
              as EpubNavigationDocTitle,
      navMap: null == navMap
          ? _value.navMap
          : navMap // ignore: cast_nullable_to_non_nullable
              as EpubNavigationMap,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as EpubNavigationHead?,
      docAuthors: null == docAuthors
          ? _value.docAuthors
          : docAuthors // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationDocAuthor>,
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
  $EpubNavigationDocTitleCopyWith<$Res> get docTitle {
    return $EpubNavigationDocTitleCopyWith<$Res>(_value.docTitle, (value) {
      return _then(_value.copyWith(docTitle: value) as $Val);
    });
  }

  /// Create a copy of EpubNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubNavigationMapCopyWith<$Res> get navMap {
    return $EpubNavigationMapCopyWith<$Res>(_value.navMap, (value) {
      return _then(_value.copyWith(navMap: value) as $Val);
    });
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
      {EpubNavigationDocTitle docTitle,
      EpubNavigationMap navMap,
      EpubNavigationHead? head,
      List<EpubNavigationDocAuthor> docAuthors,
      EpubNavigationPageList? pageList,
      List<EpubNavigationList> navLists});

  @override
  $EpubNavigationDocTitleCopyWith<$Res> get docTitle;
  @override
  $EpubNavigationMapCopyWith<$Res> get navMap;
  @override
  $EpubNavigationHeadCopyWith<$Res>? get head;
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
    Object? docTitle = null,
    Object? navMap = null,
    Object? head = freezed,
    Object? docAuthors = null,
    Object? pageList = freezed,
    Object? navLists = null,
  }) {
    return _then(_$EpubNavigationImpl(
      docTitle: null == docTitle
          ? _value.docTitle
          : docTitle // ignore: cast_nullable_to_non_nullable
              as EpubNavigationDocTitle,
      navMap: null == navMap
          ? _value.navMap
          : navMap // ignore: cast_nullable_to_non_nullable
              as EpubNavigationMap,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as EpubNavigationHead?,
      docAuthors: null == docAuthors
          ? _value._docAuthors
          : docAuthors // ignore: cast_nullable_to_non_nullable
              as List<EpubNavigationDocAuthor>,
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
      {required this.docTitle,
      required this.navMap,
      this.head,
      final List<EpubNavigationDocAuthor> docAuthors =
          const <EpubNavigationDocAuthor>[],
      this.pageList,
      final List<EpubNavigationList> navLists = const <EpubNavigationList>[]})
      : _docAuthors = docAuthors,
        _navLists = navLists;

  @override
  final EpubNavigationDocTitle docTitle;
  @override
  final EpubNavigationMap navMap;
  @override
  final EpubNavigationHead? head;
  final List<EpubNavigationDocAuthor> _docAuthors;
  @override
  @JsonKey()
  List<EpubNavigationDocAuthor> get docAuthors {
    if (_docAuthors is EqualUnmodifiableListView) return _docAuthors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docAuthors);
  }

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
    return 'EpubNavigation(docTitle: $docTitle, navMap: $navMap, head: $head, docAuthors: $docAuthors, pageList: $pageList, navLists: $navLists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubNavigationImpl &&
            (identical(other.docTitle, docTitle) ||
                other.docTitle == docTitle) &&
            (identical(other.navMap, navMap) || other.navMap == navMap) &&
            (identical(other.head, head) || other.head == head) &&
            const DeepCollectionEquality()
                .equals(other._docAuthors, _docAuthors) &&
            (identical(other.pageList, pageList) ||
                other.pageList == pageList) &&
            const DeepCollectionEquality().equals(other._navLists, _navLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      docTitle,
      navMap,
      head,
      const DeepCollectionEquality().hash(_docAuthors),
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
      {required final EpubNavigationDocTitle docTitle,
      required final EpubNavigationMap navMap,
      final EpubNavigationHead? head,
      final List<EpubNavigationDocAuthor> docAuthors,
      final EpubNavigationPageList? pageList,
      final List<EpubNavigationList> navLists}) = _$EpubNavigationImpl;

  @override
  EpubNavigationDocTitle get docTitle;
  @override
  EpubNavigationMap get navMap;
  @override
  EpubNavigationHead? get head;
  @override
  List<EpubNavigationDocAuthor> get docAuthors;
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
