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
  EpubArchive get epubArchive => throw _privateConstructorUsedError;
  EpubSchema get schema => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<EpubMetadataCreator> get authors => throw _privateConstructorUsedError;
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
      {EpubArchive epubArchive,
      EpubSchema schema,
      String? title,
      List<EpubMetadataCreator> authors,
      EpubContentRef? content});

  $EpubSchemaCopyWith<$Res> get schema;
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
    Object? schema = null,
    Object? title = freezed,
    Object? authors = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      epubArchive: null == epubArchive
          ? _value.epubArchive
          : epubArchive // ignore: cast_nullable_to_non_nullable
              as EpubArchive,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<EpubMetadataCreator>,
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
  $EpubSchemaCopyWith<$Res> get schema {
    return $EpubSchemaCopyWith<$Res>(_value.schema, (value) {
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
      {EpubArchive epubArchive,
      EpubSchema schema,
      String? title,
      List<EpubMetadataCreator> authors,
      EpubContentRef? content});

  @override
  $EpubSchemaCopyWith<$Res> get schema;
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
    Object? schema = null,
    Object? title = freezed,
    Object? authors = null,
    Object? content = freezed,
  }) {
    return _then(_$EpubBookRefImpl(
      epubArchive: null == epubArchive
          ? _value.epubArchive
          : epubArchive // ignore: cast_nullable_to_non_nullable
              as EpubArchive,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as EpubSchema,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<EpubMetadataCreator>,
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
      required this.schema,
      this.title,
      final List<EpubMetadataCreator> authors = const [],
      this.content})
      : _authors = authors,
        super._();

  @override
  final EpubArchive epubArchive;
  @override
  final EpubSchema schema;
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
  final EpubContentRef? content;

  @override
  String toString() {
    return 'EpubBookRef(epubArchive: $epubArchive, schema: $schema, title: $title, authors: $authors, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubBookRefImpl &&
            (identical(other.epubArchive, epubArchive) ||
                other.epubArchive == epubArchive) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, epubArchive, schema, title,
      const DeepCollectionEquality().hash(_authors), content);

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
      {required final EpubArchive epubArchive,
      required final EpubSchema schema,
      final String? title,
      final List<EpubMetadataCreator> authors,
      final EpubContentRef? content}) = _$EpubBookRefImpl;
  const _EpubBookRef._() : super._();

  @override
  EpubArchive get epubArchive;
  @override
  EpubSchema get schema;
  @override
  String? get title;
  @override
  List<EpubMetadataCreator> get authors;
  @override
  EpubContentRef? get content;

  /// Create a copy of EpubBookRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubBookRefImplCopyWith<_$EpubBookRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
