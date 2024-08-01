// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_book_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubBookRef {
  Archive get epubArchive => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  EpubSchema? get schema => throw _privateConstructorUsedError;
  EpubContentRef? get content => throw _privateConstructorUsedError;

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubBookRefCopyWith<EpubBookRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubBookRefCopyWith<$Res> {
  factory $EpubBookRefCopyWith(
          EpubBookRef value, $Res Function(EpubBookRef) then) =
      _$EpubBookRefCopyWithImpl<$Res, EpubBookRef>;
  @useResult
  $Res call(
      {Archive epubArchive,
      String? title,
      String? author,
      List<String> authors,
      EpubSchema? schema,
      EpubContentRef? content});

  $EpubSchemaCopyWith<$Res>? get schema;
  $EpubContentRefCopyWith<$Res>? get content;
}

/// @nodoc
class _$EpubBookRefCopyWithImpl<$Res, $Val extends EpubBookRef>
    implements $EpubBookRefCopyWith<$Res> {
  _$EpubBookRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubArchive = null,
    Object? title = freezed,
    Object? author = freezed,
    Object? authors = null,
    Object? schema = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      epubArchive: null == epubArchive
          ? _value.epubArchive
          : epubArchive // ignore: cast_nullable_to_non_nullable
              as Archive,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubContentRef?,
    ) as $Val);
  }

  /// Create a copy of EpubBookRef
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

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubContentRefCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $EpubContentRefCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubBookRefImplCopyWith<$Res>
    implements $EpubBookRefCopyWith<$Res> {
  factory _$$EpubBookRefImplCopyWith(
          _$EpubBookRefImpl value, $Res Function(_$EpubBookRefImpl) then) =
      __$$EpubBookRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Archive epubArchive,
      String? title,
      String? author,
      List<String> authors,
      EpubSchema? schema,
      EpubContentRef? content});

  @override
  $EpubSchemaCopyWith<$Res>? get schema;
  @override
  $EpubContentRefCopyWith<$Res>? get content;
}

/// @nodoc
class __$$EpubBookRefImplCopyWithImpl<$Res>
    extends _$EpubBookRefCopyWithImpl<$Res, _$EpubBookRefImpl>
    implements _$$EpubBookRefImplCopyWith<$Res> {
  __$$EpubBookRefImplCopyWithImpl(
      _$EpubBookRefImpl _value, $Res Function(_$EpubBookRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubArchive = null,
    Object? title = freezed,
    Object? author = freezed,
    Object? authors = null,
    Object? schema = freezed,
    Object? content = freezed,
  }) {
    return _then(_$EpubBookRefImpl(
      epubArchive: null == epubArchive
          ? _value.epubArchive
          : epubArchive // ignore: cast_nullable_to_non_nullable
              as Archive,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as EpubContentRef?,
    ));
  }
}

/// @nodoc

class _$EpubBookRefImpl extends _EpubBookRef {
  const _$EpubBookRefImpl(
      {required this.epubArchive,
      this.title,
      this.author,
      final List<String> authors = const [],
      this.schema,
      this.content})
      : _authors = authors,
        super._();

  @override
  final Archive epubArchive;
  @override
  final String? title;
  @override
  final String? author;
  final List<String> _authors;
  @override
  @JsonKey()
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  final EpubSchema? schema;
  @override
  final EpubContentRef? content;

  @override
  String toString() {
    return 'EpubBookRef(epubArchive: $epubArchive, title: $title, author: $author, authors: $authors, schema: $schema, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubBookRefImpl &&
            const DeepCollectionEquality()
                .equals(other.epubArchive, epubArchive) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(epubArchive),
      title,
      author,
      const DeepCollectionEquality().hash(_authors),
      schema,
      content);

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubBookRefImplCopyWith<_$EpubBookRefImpl> get copyWith =>
      __$$EpubBookRefImplCopyWithImpl<_$EpubBookRefImpl>(this, _$identity);
}

abstract class _EpubBookRef extends EpubBookRef {
  const factory _EpubBookRef(
      {required final Archive epubArchive,
      final String? title,
      final String? author,
      final List<String> authors,
      final EpubSchema? schema,
      final EpubContentRef? content}) = _$EpubBookRefImpl;
  const _EpubBookRef._() : super._();

  @override
  Archive get epubArchive;
  @override
  String? get title;
  @override
  String? get author;
  @override
  List<String> get authors;
  @override
  EpubSchema? get schema;
  @override
  EpubContentRef? get content;

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubBookRefImplCopyWith<_$EpubBookRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
