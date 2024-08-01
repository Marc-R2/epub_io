// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_text_content_file_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubTextContentFileRef {
  EpubBookRef get epubBookRef => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get contentMimeType => throw _privateConstructorUsedError;
  EpubContentType? get contentType => throw _privateConstructorUsedError;

  /// Create a copy of EpubTextContentFileRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubTextContentFileRefCopyWith<EpubTextContentFileRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubTextContentFileRefCopyWith<$Res> {
  factory $EpubTextContentFileRefCopyWith(EpubTextContentFileRef value,
          $Res Function(EpubTextContentFileRef) then) =
      _$EpubTextContentFileRefCopyWithImpl<$Res, EpubTextContentFileRef>;
  @useResult
  $Res call(
      {EpubBookRef epubBookRef,
      String? fileName,
      String? contentMimeType,
      EpubContentType? contentType});

  $EpubBookRefCopyWith<$Res> get epubBookRef;
}

/// @nodoc
class _$EpubTextContentFileRefCopyWithImpl<$Res,
        $Val extends EpubTextContentFileRef>
    implements $EpubTextContentFileRefCopyWith<$Res> {
  _$EpubTextContentFileRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubTextContentFileRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubBookRef = null,
    Object? fileName = freezed,
    Object? contentMimeType = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      epubBookRef: null == epubBookRef
          ? _value.epubBookRef
          : epubBookRef // ignore: cast_nullable_to_non_nullable
              as EpubBookRef,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentMimeType: freezed == contentMimeType
          ? _value.contentMimeType
          : contentMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as EpubContentType?,
    ) as $Val);
  }

  /// Create a copy of EpubTextContentFileRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubBookRefCopyWith<$Res> get epubBookRef {
    return $EpubBookRefCopyWith<$Res>(_value.epubBookRef, (value) {
      return _then(_value.copyWith(epubBookRef: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubTextContentFileRefImplCopyWith<$Res>
    implements $EpubTextContentFileRefCopyWith<$Res> {
  factory _$$EpubTextContentFileRefImplCopyWith(
          _$EpubTextContentFileRefImpl value,
          $Res Function(_$EpubTextContentFileRefImpl) then) =
      __$$EpubTextContentFileRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EpubBookRef epubBookRef,
      String? fileName,
      String? contentMimeType,
      EpubContentType? contentType});

  @override
  $EpubBookRefCopyWith<$Res> get epubBookRef;
}

/// @nodoc
class __$$EpubTextContentFileRefImplCopyWithImpl<$Res>
    extends _$EpubTextContentFileRefCopyWithImpl<$Res,
        _$EpubTextContentFileRefImpl>
    implements _$$EpubTextContentFileRefImplCopyWith<$Res> {
  __$$EpubTextContentFileRefImplCopyWithImpl(
      _$EpubTextContentFileRefImpl _value,
      $Res Function(_$EpubTextContentFileRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubTextContentFileRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epubBookRef = null,
    Object? fileName = freezed,
    Object? contentMimeType = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$EpubTextContentFileRefImpl(
      epubBookRef: null == epubBookRef
          ? _value.epubBookRef
          : epubBookRef // ignore: cast_nullable_to_non_nullable
              as EpubBookRef,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentMimeType: freezed == contentMimeType
          ? _value.contentMimeType
          : contentMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as EpubContentType?,
    ));
  }
}

/// @nodoc

class _$EpubTextContentFileRefImpl extends _EpubTextContentFileRef {
  const _$EpubTextContentFileRefImpl(
      {required this.epubBookRef,
      this.fileName,
      this.contentMimeType,
      this.contentType})
      : super._();

  @override
  final EpubBookRef epubBookRef;
  @override
  final String? fileName;
  @override
  final String? contentMimeType;
  @override
  final EpubContentType? contentType;

  @override
  String toString() {
    return 'EpubTextContentFileRef(epubBookRef: $epubBookRef, fileName: $fileName, contentMimeType: $contentMimeType, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubTextContentFileRefImpl &&
            (identical(other.epubBookRef, epubBookRef) ||
                other.epubBookRef == epubBookRef) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.contentMimeType, contentMimeType) ||
                other.contentMimeType == contentMimeType) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, epubBookRef, fileName, contentMimeType, contentType);

  /// Create a copy of EpubTextContentFileRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubTextContentFileRefImplCopyWith<_$EpubTextContentFileRefImpl>
      get copyWith => __$$EpubTextContentFileRefImplCopyWithImpl<
          _$EpubTextContentFileRefImpl>(this, _$identity);
}

abstract class _EpubTextContentFileRef extends EpubTextContentFileRef {
  const factory _EpubTextContentFileRef(
      {required final EpubBookRef epubBookRef,
      final String? fileName,
      final String? contentMimeType,
      final EpubContentType? contentType}) = _$EpubTextContentFileRefImpl;
  const _EpubTextContentFileRef._() : super._();

  @override
  EpubBookRef get epubBookRef;
  @override
  String? get fileName;
  @override
  String? get contentMimeType;
  @override
  EpubContentType? get contentType;

  /// Create a copy of EpubTextContentFileRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubTextContentFileRefImplCopyWith<_$EpubTextContentFileRefImpl>
      get copyWith => throw _privateConstructorUsedError;
}
