// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubBook {
  String? get title => throw _privateConstructorUsedError;
  List<EpubMetadataCreator> get authors => throw _privateConstructorUsedError;
  EpubSchema? get schema => throw _privateConstructorUsedError;
  EpubContent? get content => throw _privateConstructorUsedError;
  Image? get coverImage => throw _privateConstructorUsedError;
  List<EpubChapter<dynamic>> get chapters => throw _privateConstructorUsedError;

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubBookCopyWith<EpubBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubBookCopyWith<$Res> {
  factory $EpubBookCopyWith(EpubBook value, $Res Function(EpubBook) then) =
      _$EpubBookCopyWithImpl<$Res, EpubBook>;
  @useResult
  $Res call(
      {String? title,
      List<EpubMetadataCreator> authors,
      EpubSchema? schema,
      EpubContent? content,
      Image? coverImage,
      List<EpubChapter<dynamic>> chapters});

  $EpubSchemaCopyWith<$Res>? get schema;
  $EpubContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$EpubBookCopyWithImpl<$Res, $Val extends EpubBook>
    implements $EpubBookCopyWith<$Res> {
  _$EpubBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? authors = null,
    Object? schema = freezed,
    Object? content = freezed,
    Object? coverImage = freezed,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<EpubMetadataCreator>,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubContent?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as Image?,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
    ) as $Val);
  }

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubSchemaCopyWith<$Res>? get schema {
    if (_value.schema == null) {
      return null;
    }

    return $EpubSchemaCopyWith<$Res>(_value.schema!, (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $EpubContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubBookImplCopyWith<$Res>
    implements $EpubBookCopyWith<$Res> {
  factory _$$EpubBookImplCopyWith(
          _$EpubBookImpl value, $Res Function(_$EpubBookImpl) then) =
      __$$EpubBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      List<EpubMetadataCreator> authors,
      EpubSchema? schema,
      EpubContent? content,
      Image? coverImage,
      List<EpubChapter<dynamic>> chapters});

  @override
  $EpubSchemaCopyWith<$Res>? get schema;
  @override
  $EpubContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$EpubBookImplCopyWithImpl<$Res>
    extends _$EpubBookCopyWithImpl<$Res, _$EpubBookImpl>
    implements _$$EpubBookImplCopyWith<$Res> {
  __$$EpubBookImplCopyWithImpl(
      _$EpubBookImpl _value, $Res Function(_$EpubBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? authors = null,
    Object? schema = freezed,
    Object? content = freezed,
    Object? coverImage = freezed,
    Object? chapters = null,
  }) {
    return _then(_$EpubBookImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<EpubMetadataCreator>,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubContent?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as Image?,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<EpubChapter<dynamic>>,
    ));
  }
}

/// @nodoc

class _$EpubBookImpl extends _EpubBook {
  const _$EpubBookImpl(
      {this.title,
      final List<EpubMetadataCreator> authors = const [],
      this.schema,
      this.content,
      this.coverImage,
      final List<EpubChapter<dynamic>> chapters = const []})
      : _authors = authors,
        _chapters = chapters,
        super._();

  @override
  final String? title;
  final List<EpubMetadataCreator> _authors;
  @override
  @JsonKey()
  List<EpubMetadataCreator> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  final EpubSchema? schema;
  @override
  final EpubContent? content;
  @override
  final Image? coverImage;
  final List<EpubChapter<dynamic>> _chapters;
  @override
  @JsonKey()
  List<EpubChapter<dynamic>> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'EpubBook(title: $title, authors: $authors, schema: $schema, content: $content, coverImage: $coverImage, chapters: $chapters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubBookImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_authors),
      schema,
      content,
      const DeepCollectionEquality().hash(coverImage),
      const DeepCollectionEquality().hash(_chapters));

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubBookImplCopyWith<_$EpubBookImpl> get copyWith =>
      __$$EpubBookImplCopyWithImpl<_$EpubBookImpl>(this, _$identity);
}

abstract class _EpubBook extends EpubBook {
  const factory _EpubBook(
      {final String? title,
      final List<EpubMetadataCreator> authors,
      final EpubSchema? schema,
      final EpubContent? content,
      final Image? coverImage,
      final List<EpubChapter<dynamic>> chapters}) = _$EpubBookImpl;
  const _EpubBook._() : super._();

  @override
  String? get title;
  @override
  List<EpubMetadataCreator> get authors;
  @override
  EpubSchema? get schema;
  @override
  EpubContent? get content;
  @override
  Image? get coverImage;
  @override
  List<EpubChapter<dynamic>> get chapters;

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubBookImplCopyWith<_$EpubBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
