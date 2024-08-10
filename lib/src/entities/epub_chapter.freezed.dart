// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubChapterText {
  String get contentFileName => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<EpubChapter<dynamic>> get subChapters =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get anchor => throw _privateConstructorUsedError;

  /// Create a copy of EpubChapterText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubChapterTextCopyWith<EpubChapterText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubChapterTextCopyWith<$Res> {
  factory $EpubChapterTextCopyWith(
          EpubChapterText value, $Res Function(EpubChapterText) then) =
      _$EpubChapterTextCopyWithImpl<$Res, EpubChapterText>;
  @useResult
  $Res call(
      {String contentFileName,
      String content,
      List<EpubChapter<dynamic>> subChapters,
      String title,
      String? anchor});
}

/// @nodoc
class _$EpubChapterTextCopyWithImpl<$Res, $Val extends EpubChapterText>
    implements $EpubChapterTextCopyWith<$Res> {
  _$EpubChapterTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubChapterText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentFileName = null,
    Object? content = null,
    Object? subChapters = null,
    Object? title = null,
    Object? anchor = freezed,
  }) {
    return _then(_value.copyWith(
      contentFileName: null == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      subChapters: null == subChapters
          ? _value.subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
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
abstract class _$$EpubChapterTextImplCopyWith<$Res>
    implements $EpubChapterTextCopyWith<$Res> {
  factory _$$EpubChapterTextImplCopyWith(_$EpubChapterTextImpl value,
          $Res Function(_$EpubChapterTextImpl) then) =
      __$$EpubChapterTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentFileName,
      String content,
      List<EpubChapter<dynamic>> subChapters,
      String title,
      String? anchor});
}

/// @nodoc
class __$$EpubChapterTextImplCopyWithImpl<$Res>
    extends _$EpubChapterTextCopyWithImpl<$Res, _$EpubChapterTextImpl>
    implements _$$EpubChapterTextImplCopyWith<$Res> {
  __$$EpubChapterTextImplCopyWithImpl(
      _$EpubChapterTextImpl _value, $Res Function(_$EpubChapterTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubChapterText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentFileName = null,
    Object? content = null,
    Object? subChapters = null,
    Object? title = null,
    Object? anchor = freezed,
  }) {
    return _then(_$EpubChapterTextImpl(
      contentFileName: null == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      subChapters: null == subChapters
          ? _value._subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
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

class _$EpubChapterTextImpl implements _EpubChapterText {
  const _$EpubChapterTextImpl(
      {required this.contentFileName,
      required this.content,
      required final List<EpubChapter<dynamic>> subChapters,
      required this.title,
      this.anchor})
      : _subChapters = subChapters;

  @override
  final String contentFileName;
  @override
  final String content;
  final List<EpubChapter<dynamic>> _subChapters;
  @override
  List<EpubChapter<dynamic>> get subChapters {
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
    return 'EpubChapterText(contentFileName: $contentFileName, content: $content, subChapters: $subChapters, title: $title, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubChapterTextImpl &&
            (identical(other.contentFileName, contentFileName) ||
                other.contentFileName == contentFileName) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._subChapters, _subChapters) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentFileName, content,
      const DeepCollectionEquality().hash(_subChapters), title, anchor);

  /// Create a copy of EpubChapterText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubChapterTextImplCopyWith<_$EpubChapterTextImpl> get copyWith =>
      __$$EpubChapterTextImplCopyWithImpl<_$EpubChapterTextImpl>(
          this, _$identity);
}

abstract class _EpubChapterText implements EpubChapterText {
  const factory _EpubChapterText(
      {required final String contentFileName,
      required final String content,
      required final List<EpubChapter<dynamic>> subChapters,
      required final String title,
      final String? anchor}) = _$EpubChapterTextImpl;

  @override
  String get contentFileName;
  @override
  String get content;
  @override
  List<EpubChapter<dynamic>> get subChapters;
  @override
  String get title;
  @override
  String? get anchor;

  /// Create a copy of EpubChapterText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubChapterTextImplCopyWith<_$EpubChapterTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpubChapterBytes {
  String get contentFileName => throw _privateConstructorUsedError;
  List<int> get content => throw _privateConstructorUsedError;
  List<EpubChapter<dynamic>> get subChapters =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get anchor => throw _privateConstructorUsedError;

  /// Create a copy of EpubChapterBytes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubChapterBytesCopyWith<EpubChapterBytes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubChapterBytesCopyWith<$Res> {
  factory $EpubChapterBytesCopyWith(
          EpubChapterBytes value, $Res Function(EpubChapterBytes) then) =
      _$EpubChapterBytesCopyWithImpl<$Res, EpubChapterBytes>;
  @useResult
  $Res call(
      {String contentFileName,
      List<int> content,
      List<EpubChapter<dynamic>> subChapters,
      String title,
      String? anchor});
}

/// @nodoc
class _$EpubChapterBytesCopyWithImpl<$Res, $Val extends EpubChapterBytes>
    implements $EpubChapterBytesCopyWith<$Res> {
  _$EpubChapterBytesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubChapterBytes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentFileName = null,
    Object? content = null,
    Object? subChapters = null,
    Object? title = null,
    Object? anchor = freezed,
  }) {
    return _then(_value.copyWith(
      contentFileName: null == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>,
      subChapters: null == subChapters
          ? _value.subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
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
abstract class _$$EpubChapterBytesImplCopyWith<$Res>
    implements $EpubChapterBytesCopyWith<$Res> {
  factory _$$EpubChapterBytesImplCopyWith(_$EpubChapterBytesImpl value,
          $Res Function(_$EpubChapterBytesImpl) then) =
      __$$EpubChapterBytesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentFileName,
      List<int> content,
      List<EpubChapter<dynamic>> subChapters,
      String title,
      String? anchor});
}

/// @nodoc
class __$$EpubChapterBytesImplCopyWithImpl<$Res>
    extends _$EpubChapterBytesCopyWithImpl<$Res, _$EpubChapterBytesImpl>
    implements _$$EpubChapterBytesImplCopyWith<$Res> {
  __$$EpubChapterBytesImplCopyWithImpl(_$EpubChapterBytesImpl _value,
      $Res Function(_$EpubChapterBytesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubChapterBytes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentFileName = null,
    Object? content = null,
    Object? subChapters = null,
    Object? title = null,
    Object? anchor = freezed,
  }) {
    return _then(_$EpubChapterBytesImpl(
      contentFileName: null == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>,
      subChapters: null == subChapters
          ? _value._subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
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

class _$EpubChapterBytesImpl implements _EpubChapterBytes {
  const _$EpubChapterBytesImpl(
      {required this.contentFileName,
      required final List<int> content,
      required final List<EpubChapter<dynamic>> subChapters,
      required this.title,
      this.anchor})
      : _content = content,
        _subChapters = subChapters;

  @override
  final String contentFileName;
  final List<int> _content;
  @override
  List<int> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  final List<EpubChapter<dynamic>> _subChapters;
  @override
  List<EpubChapter<dynamic>> get subChapters {
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
    return 'EpubChapterBytes(contentFileName: $contentFileName, content: $content, subChapters: $subChapters, title: $title, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubChapterBytesImpl &&
            (identical(other.contentFileName, contentFileName) ||
                other.contentFileName == contentFileName) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality()
                .equals(other._subChapters, _subChapters) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      contentFileName,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_subChapters),
      title,
      anchor);

  /// Create a copy of EpubChapterBytes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubChapterBytesImplCopyWith<_$EpubChapterBytesImpl> get copyWith =>
      __$$EpubChapterBytesImplCopyWithImpl<_$EpubChapterBytesImpl>(
          this, _$identity);
}

abstract class _EpubChapterBytes implements EpubChapterBytes {
  const factory _EpubChapterBytes(
      {required final String contentFileName,
      required final List<int> content,
      required final List<EpubChapter<dynamic>> subChapters,
      required final String title,
      final String? anchor}) = _$EpubChapterBytesImpl;

  @override
  String get contentFileName;
  @override
  List<int> get content;
  @override
  List<EpubChapter<dynamic>> get subChapters;
  @override
  String get title;
  @override
  String? get anchor;

  /// Create a copy of EpubChapterBytes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubChapterBytesImplCopyWith<_$EpubChapterBytesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
