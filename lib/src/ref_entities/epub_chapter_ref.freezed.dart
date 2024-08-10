// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_chapter_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubChapterRef {
  EpubContentFileRef<dynamic> get epubContentFileRef =>
      throw _privateConstructorUsedError;
  String get contentFileName => throw _privateConstructorUsedError;
  List<EpubChapterRef> get subChapters => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get anchor => throw _privateConstructorUsedError;

  /// Create a copy of EpubChapterRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubChapterRefCopyWith<EpubChapterRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubChapterRefCopyWith<$Res> {
  factory $EpubChapterRefCopyWith(
          EpubChapterRef value, $Res Function(EpubChapterRef) then) =
      _$EpubChapterRefCopyWithImpl<$Res, EpubChapterRef>;
  @useResult
  $Res call(
      {EpubContentFileRef<dynamic> epubContentFileRef,
      String contentFileName,
      List<EpubChapterRef> subChapters,
      String title,
      String? anchor});
}

/// @nodoc
class _$EpubChapterRefCopyWithImpl<$Res, $Val extends EpubChapterRef>
    implements $EpubChapterRefCopyWith<$Res> {
  _$EpubChapterRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubChapterRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubContentFileRef = null,
    Object? contentFileName = null,
    Object? subChapters = null,
    Object? title = null,
    Object? anchor = freezed,
  }) {
    return _then(_value.copyWith(
      epubContentFileRef: null == epubContentFileRef
          ? _value.epubContentFileRef
          : epubContentFileRef // ignore: cast_nullable_to_non_nullable
              as EpubContentFileRef<dynamic>,
      contentFileName: null == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String,
      subChapters: null == subChapters
          ? _value.subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapterRef>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubChapterRefImplCopyWith<$Res>
    implements $EpubChapterRefCopyWith<$Res> {
  factory _$$EpubChapterRefImplCopyWith(_$EpubChapterRefImpl value,
          $Res Function(_$EpubChapterRefImpl) then) =
      __$$EpubChapterRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EpubContentFileRef<dynamic> epubContentFileRef,
      String contentFileName,
      List<EpubChapterRef> subChapters,
      String title,
      String? anchor});
}

/// @nodoc
class __$$EpubChapterRefImplCopyWithImpl<$Res>
    extends _$EpubChapterRefCopyWithImpl<$Res, _$EpubChapterRefImpl>
    implements _$$EpubChapterRefImplCopyWith<$Res> {
  __$$EpubChapterRefImplCopyWithImpl(
      _$EpubChapterRefImpl _value, $Res Function(_$EpubChapterRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubChapterRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubContentFileRef = null,
    Object? contentFileName = null,
    Object? subChapters = null,
    Object? title = null,
    Object? anchor = freezed,
  }) {
    return _then(_$EpubChapterRefImpl(
      epubContentFileRef: null == epubContentFileRef
          ? _value.epubContentFileRef
          : epubContentFileRef // ignore: cast_nullable_to_non_nullable
              as EpubContentFileRef<dynamic>,
      contentFileName: null == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String,
      subChapters: null == subChapters
          ? _value._subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapterRef>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubChapterRefImpl extends _EpubChapterRef {
  const _$EpubChapterRefImpl(
      {required this.epubContentFileRef,
      required this.contentFileName,
      required final List<EpubChapterRef> subChapters,
      required this.title,
      this.anchor})
      : _subChapters = subChapters,
        super._();

  @override
  final EpubContentFileRef<dynamic> epubContentFileRef;
  @override
  final String contentFileName;
  final List<EpubChapterRef> _subChapters;
  @override
  List<EpubChapterRef> get subChapters {
    if (_subChapters is EqualUnmodifiableListView) return _subChapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subChapters);
  }

  @override
  final String title;
  @override
  final String? anchor;

  @override
  String toString() {
    return 'EpubChapterRef(epubContentFileRef: $epubContentFileRef, contentFileName: $contentFileName, subChapters: $subChapters, title: $title, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubChapterRefImpl &&
            (identical(other.epubContentFileRef, epubContentFileRef) ||
                other.epubContentFileRef == epubContentFileRef) &&
            (identical(other.contentFileName, contentFileName) ||
                other.contentFileName == contentFileName) &&
            const DeepCollectionEquality()
                .equals(other._subChapters, _subChapters) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      epubContentFileRef,
      contentFileName,
      const DeepCollectionEquality().hash(_subChapters),
      title,
      anchor);

  /// Create a copy of EpubChapterRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubChapterRefImplCopyWith<_$EpubChapterRefImpl> get copyWith =>
      __$$EpubChapterRefImplCopyWithImpl<_$EpubChapterRefImpl>(
          this, _$identity);
}

abstract class _EpubChapterRef extends EpubChapterRef {
  const factory _EpubChapterRef(
      {required final EpubContentFileRef<dynamic> epubContentFileRef,
      required final String contentFileName,
      required final List<EpubChapterRef> subChapters,
      required final String title,
      final String? anchor}) = _$EpubChapterRefImpl;
  const _EpubChapterRef._() : super._();

  @override
  EpubContentFileRef<dynamic> get epubContentFileRef;
  @override
  String get contentFileName;
  @override
  List<EpubChapterRef> get subChapters;
  @override
  String get title;
  @override
  String? get anchor;

  /// Create a copy of EpubChapterRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubChapterRefImplCopyWith<_$EpubChapterRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
