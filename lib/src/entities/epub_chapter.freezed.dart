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
  String? get title => throw _privateConstructorUsedError;
  String? get contentFileName => throw _privateConstructorUsedError;
  String? get anchor => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<EpubChapter<dynamic>> get subChapters =>
      throw _privateConstructorUsedError;

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
      {String? title,
      String? contentFileName,
      String? anchor,
      String? content,
      List<EpubChapter<dynamic>> subChapters});
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
    Object? title = freezed,
    Object? contentFileName = freezed,
    Object? anchor = freezed,
    Object? content = freezed,
    Object? subChapters = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contentFileName: freezed == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      subChapters: null == subChapters
          ? _value.subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
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
      {String? title,
      String? contentFileName,
      String? anchor,
      String? content,
      List<EpubChapter<dynamic>> subChapters});
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
    Object? title = freezed,
    Object? contentFileName = freezed,
    Object? anchor = freezed,
    Object? content = freezed,
    Object? subChapters = null,
  }) {
    return _then(_$EpubChapterTextImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contentFileName: freezed == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      subChapters: null == subChapters
          ? _value._subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
    ));
  }
}

/// @nodoc

class _$EpubChapterTextImpl implements _EpubChapterText {
  const _$EpubChapterTextImpl(
      {this.title,
      this.contentFileName,
      this.anchor,
      this.content,
      final List<EpubChapter<dynamic>> subChapters = const []})
      : _subChapters = subChapters;

  @override
  final String? title;
  @override
  final String? contentFileName;
  @override
  final String? anchor;
  @override
  final String? content;
  final List<EpubChapter<dynamic>> _subChapters;
  @override
  @JsonKey()
  List<EpubChapter<dynamic>> get subChapters {
    if (_subChapters is EqualUnmodifiableListView) return _subChapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subChapters);
  }

  @override
  String toString() {
    return 'EpubChapterText(title: $title, contentFileName: $contentFileName, anchor: $anchor, content: $content, subChapters: $subChapters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubChapterTextImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contentFileName, contentFileName) ||
                other.contentFileName == contentFileName) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._subChapters, _subChapters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, contentFileName, anchor,
      content, const DeepCollectionEquality().hash(_subChapters));

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
      {final String? title,
      final String? contentFileName,
      final String? anchor,
      final String? content,
      final List<EpubChapter<dynamic>> subChapters}) = _$EpubChapterTextImpl;

  @override
  String? get title;
  @override
  String? get contentFileName;
  @override
  String? get anchor;
  @override
  String? get content;
  @override
  List<EpubChapter<dynamic>> get subChapters;

  /// Create a copy of EpubChapterText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubChapterTextImplCopyWith<_$EpubChapterTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpubChapterBytes {
  String? get title => throw _privateConstructorUsedError;
  String? get contentFileName => throw _privateConstructorUsedError;
  String? get anchor => throw _privateConstructorUsedError;
  List<int>? get content => throw _privateConstructorUsedError;
  List<EpubChapter<dynamic>> get subChapters =>
      throw _privateConstructorUsedError;

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
      {String? title,
      String? contentFileName,
      String? anchor,
      List<int>? content,
      List<EpubChapter<dynamic>> subChapters});
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
    Object? title = freezed,
    Object? contentFileName = freezed,
    Object? anchor = freezed,
    Object? content = freezed,
    Object? subChapters = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contentFileName: freezed == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      subChapters: null == subChapters
          ? _value.subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
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
      {String? title,
      String? contentFileName,
      String? anchor,
      List<int>? content,
      List<EpubChapter<dynamic>> subChapters});
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
    Object? title = freezed,
    Object? contentFileName = freezed,
    Object? anchor = freezed,
    Object? content = freezed,
    Object? subChapters = null,
  }) {
    return _then(_$EpubChapterBytesImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contentFileName: freezed == contentFileName
          ? _value.contentFileName
          : contentFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      subChapters: null == subChapters
          ? _value._subChapters
          : subChapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
    ));
  }
}

/// @nodoc

class _$EpubChapterBytesImpl implements _EpubChapterBytes {
  const _$EpubChapterBytesImpl(
      {this.title,
      this.contentFileName,
      this.anchor,
      final List<int>? content,
      final List<EpubChapter<dynamic>> subChapters = const []})
      : _content = content,
        _subChapters = subChapters;

  @override
  final String? title;
  @override
  final String? contentFileName;
  @override
  final String? anchor;
  final List<int>? _content;
  @override
  List<int>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EpubChapter<dynamic>> _subChapters;
  @override
  @JsonKey()
  List<EpubChapter<dynamic>> get subChapters {
    if (_subChapters is EqualUnmodifiableListView) return _subChapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subChapters);
  }

  @override
  String toString() {
    return 'EpubChapterBytes(title: $title, contentFileName: $contentFileName, anchor: $anchor, content: $content, subChapters: $subChapters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubChapterBytesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contentFileName, contentFileName) ||
                other.contentFileName == contentFileName) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality()
                .equals(other._subChapters, _subChapters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      contentFileName,
      anchor,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_subChapters));

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
      {final String? title,
      final String? contentFileName,
      final String? anchor,
      final List<int>? content,
      final List<EpubChapter<dynamic>> subChapters}) = _$EpubChapterBytesImpl;

  @override
  String? get title;
  @override
  String? get contentFileName;
  @override
  String? get anchor;
  @override
  List<int>? get content;
  @override
  List<EpubChapter<dynamic>> get subChapters;

  /// Create a copy of EpubChapterBytes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubChapterBytesImplCopyWith<_$EpubChapterBytesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
