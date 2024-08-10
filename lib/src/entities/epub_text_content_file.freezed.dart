// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_text_content_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubTextContentFile {
  String get fileName => throw _privateConstructorUsedError;
  String get contentMimeType => throw _privateConstructorUsedError;
  EpubContentType get contentType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of EpubTextContentFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubTextContentFileCopyWith<EpubTextContentFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubTextContentFileCopyWith<$Res> {
  factory $EpubTextContentFileCopyWith(
          EpubTextContentFile value, $Res Function(EpubTextContentFile) then) =
      _$EpubTextContentFileCopyWithImpl<$Res, EpubTextContentFile>;
  @useResult
  $Res call(
      {String fileName,
      String contentMimeType,
      EpubContentType contentType,
      String content});
}

/// @nodoc
class _$EpubTextContentFileCopyWithImpl<$Res, $Val extends EpubTextContentFile>
    implements $EpubTextContentFileCopyWith<$Res> {
  _$EpubTextContentFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubTextContentFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? contentMimeType = null,
    Object? contentType = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      contentMimeType: null == contentMimeType
          ? _value.contentMimeType
          : contentMimeType // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as EpubContentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubTextContentFileImplCopyWith<$Res>
    implements $EpubTextContentFileCopyWith<$Res> {
  factory _$$EpubTextContentFileImplCopyWith(_$EpubTextContentFileImpl value,
          $Res Function(_$EpubTextContentFileImpl) then) =
      __$$EpubTextContentFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      String contentMimeType,
      EpubContentType contentType,
      String content});
}

/// @nodoc
class __$$EpubTextContentFileImplCopyWithImpl<$Res>
    extends _$EpubTextContentFileCopyWithImpl<$Res, _$EpubTextContentFileImpl>
    implements _$$EpubTextContentFileImplCopyWith<$Res> {
  __$$EpubTextContentFileImplCopyWithImpl(_$EpubTextContentFileImpl _value,
      $Res Function(_$EpubTextContentFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubTextContentFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? contentMimeType = null,
    Object? contentType = null,
    Object? content = null,
  }) {
    return _then(_$EpubTextContentFileImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      contentMimeType: null == contentMimeType
          ? _value.contentMimeType
          : contentMimeType // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as EpubContentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EpubTextContentFileImpl implements _EpubTextContentFile {
  const _$EpubTextContentFileImpl(
      {required this.fileName,
      required this.contentMimeType,
      required this.contentType,
      required this.content});

  @override
  final String fileName;
  @override
  final String contentMimeType;
  @override
  final EpubContentType contentType;
  @override
  final String content;

  @override
  String toString() {
    return 'EpubTextContentFile(fileName: $fileName, contentMimeType: $contentMimeType, contentType: $contentType, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubTextContentFileImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.contentMimeType, contentMimeType) ||
                other.contentMimeType == contentMimeType) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fileName, contentMimeType, contentType, content);

  /// Create a copy of EpubTextContentFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubTextContentFileImplCopyWith<_$EpubTextContentFileImpl> get copyWith =>
      __$$EpubTextContentFileImplCopyWithImpl<_$EpubTextContentFileImpl>(
          this, _$identity);
}

abstract class _EpubTextContentFile implements EpubTextContentFile {
  const factory _EpubTextContentFile(
      {required final String fileName,
      required final String contentMimeType,
      required final EpubContentType contentType,
      required final String content}) = _$EpubTextContentFileImpl;

  @override
  String get fileName;
  @override
  String get contentMimeType;
  @override
  EpubContentType get contentType;
  @override
  String get content;

  /// Create a copy of EpubTextContentFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubTextContentFileImplCopyWith<_$EpubTextContentFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
