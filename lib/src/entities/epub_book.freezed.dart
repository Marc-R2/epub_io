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
  /// The [EpubSchema] containing metadata and structural information.
  EpubSchema get schema => throw _privateConstructorUsedError;

  /// The [EpubContent] including text, images, and other resources.
  EpubContent get content => throw _privateConstructorUsedError;

  /// The title of the EPUB book. Optional.
  String? get title => throw _privateConstructorUsedError;

  /// A list of [EpubMetadataCreator] representing the authors of the book.
  List<EpubMetadataCreator> get authors => throw _privateConstructorUsedError;

  /// The cover image of the book as an [Image].
  Image? get coverImage => throw _privateConstructorUsedError;

  /// A list of [EpubChapter] representing the chapters of the book.
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
      {EpubSchema schema,
      EpubContent content,
      String? title,
      List<EpubMetadataCreator> authors,
      Image? coverImage,
      List<EpubChapter<dynamic>> chapters});

  $EpubSchemaCopyWith<$Res> get schema;
  $EpubContentCopyWith<$Res> get content;
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
    Object? schema = null,
    Object? content = null,
    Object? title = freezed,
    Object? authors = null,
    Object? coverImage = freezed,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubContent,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<EpubMetadataCreator>,
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
  $EpubSchemaCopyWith<$Res> get schema {
    return $EpubSchemaCopyWith<$Res>(_value.schema, (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubContentCopyWith<$Res> get content {
    return $EpubContentCopyWith<$Res>(_value.content, (value) {
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
      {EpubSchema schema,
      EpubContent content,
      String? title,
      List<EpubMetadataCreator> authors,
      Image? coverImage,
      List<EpubChapter<dynamic>> chapters});

  @override
  $EpubSchemaCopyWith<$Res> get schema;
  @override
  $EpubContentCopyWith<$Res> get content;
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
    Object? schema = null,
    Object? content = null,
    Object? title = freezed,
    Object? authors = null,
    Object? coverImage = freezed,
    Object? chapters = null,
  }) {
    return _then(_$EpubBookImpl(
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubContent,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<EpubMetadataCreator>,
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
      {required this.schema,
      required this.content,
      this.title,
      final List<EpubMetadataCreator> authors = const [],
      this.coverImage,
      final List<EpubChapter<dynamic>> chapters = const []})
      : _authors = authors,
        _chapters = chapters,
        super._();

  /// The [EpubSchema] containing metadata and structural information.
  @override
  final EpubSchema schema;

  /// The [EpubContent] including text, images, and other resources.
  @override
  final EpubContent content;

  /// The title of the EPUB book. Optional.
  @override
  final String? title;

  /// A list of [EpubMetadataCreator] representing the authors of the book.
  final List<EpubMetadataCreator> _authors;

  /// A list of [EpubMetadataCreator] representing the authors of the book.
  @override
  @JsonKey()
  List<EpubMetadataCreator> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  /// The cover image of the book as an [Image].
  @override
  final Image? coverImage;

  /// A list of [EpubChapter] representing the chapters of the book.
  final List<EpubChapter<dynamic>> _chapters;

  /// A list of [EpubChapter] representing the chapters of the book.
  @override
  @JsonKey()
  List<EpubChapter<dynamic>> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'EpubBook(schema: $schema, content: $content, title: $title, authors: $authors, coverImage: $coverImage, chapters: $chapters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubBookImpl &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      schema,
      content,
      title,
      const DeepCollectionEquality().hash(_authors),
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
      {required final EpubSchema schema,
      required final EpubContent content,
      final String? title,
      final List<EpubMetadataCreator> authors,
      final Image? coverImage,
      final List<EpubChapter<dynamic>> chapters}) = _$EpubBookImpl;
  const _EpubBook._() : super._();

  /// The [EpubSchema] containing metadata and structural information.
  @override
  EpubSchema get schema;

  /// The [EpubContent] including text, images, and other resources.
  @override
  EpubContent get content;

  /// The title of the EPUB book. Optional.
  @override
  String? get title;

  /// A list of [EpubMetadataCreator] representing the authors of the book.
  @override
  List<EpubMetadataCreator> get authors;

  /// The cover image of the book as an [Image].
  @override
  Image? get coverImage;

  /// A list of [EpubChapter] representing the chapters of the book.
  @override
  List<EpubChapter<dynamic>> get chapters;

  /// Create a copy of EpubBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubBookImplCopyWith<_$EpubBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
