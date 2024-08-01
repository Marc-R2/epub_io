// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_byte_content_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubByteContentFile {
  String? get fileName => throw _privateConstructorUsedError;
  String? get contentMimeType => throw _privateConstructorUsedError;
  EpubContentType? get contentType => throw _privateConstructorUsedError;
  List<int>? get content => throw _privateConstructorUsedError;

  /// Create a copy of EpubByteContentFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubByteContentFileCopyWith<EpubByteContentFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubByteContentFileCopyWith<$Res> {
  factory $EpubByteContentFileCopyWith(
          EpubByteContentFile value, $Res Function(EpubByteContentFile) then) =
      _$EpubByteContentFileCopyWithImpl<$Res, EpubByteContentFile>;
  @useResult
  $Res call(
      {String? fileName,
      String? contentMimeType,
      EpubContentType? contentType,
      List<int>? content});
}

/// @nodoc
class _$EpubByteContentFileCopyWithImpl<$Res, $Val extends EpubByteContentFile>
    implements $EpubByteContentFileCopyWith<$Res> {
  _$EpubByteContentFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubByteContentFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? contentMimeType = freezed,
    Object? contentType = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubByteContentFileImplCopyWith<$Res>
    implements $EpubByteContentFileCopyWith<$Res> {
  factory _$$EpubByteContentFileImplCopyWith(_$EpubByteContentFileImpl value,
          $Res Function(_$EpubByteContentFileImpl) then) =
      __$$EpubByteContentFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fileName,
      String? contentMimeType,
      EpubContentType? contentType,
      List<int>? content});
}

/// @nodoc
class __$$EpubByteContentFileImplCopyWithImpl<$Res>
    extends _$EpubByteContentFileCopyWithImpl<$Res, _$EpubByteContentFileImpl>
    implements _$$EpubByteContentFileImplCopyWith<$Res> {
  __$$EpubByteContentFileImplCopyWithImpl(_$EpubByteContentFileImpl _value,
      $Res Function(_$EpubByteContentFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubByteContentFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? contentMimeType = freezed,
    Object? contentType = freezed,
    Object? content = freezed,
  }) {
    return _then(_$EpubByteContentFileImpl(
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
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$EpubByteContentFileImpl implements _EpubByteContentFile {
  const _$EpubByteContentFileImpl(
      {this.fileName,
      this.contentMimeType,
      this.contentType,
      final List<int>? content})
      : _content = content;

  @override
  final String? fileName;
  @override
  final String? contentMimeType;
  @override
  final EpubContentType? contentType;
  final List<int>? _content;
  @override
  List<int>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpubByteContentFile(fileName: $fileName, contentMimeType: $contentMimeType, contentType: $contentType, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubByteContentFileImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.contentMimeType, contentMimeType) ||
                other.contentMimeType == contentMimeType) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, contentMimeType,
      contentType, const DeepCollectionEquality().hash(_content));

  /// Create a copy of EpubByteContentFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubByteContentFileImplCopyWith<_$EpubByteContentFileImpl> get copyWith =>
      __$$EpubByteContentFileImplCopyWithImpl<_$EpubByteContentFileImpl>(
          this, _$identity);
}

abstract class _EpubByteContentFile implements EpubByteContentFile {
  const factory _EpubByteContentFile(
      {final String? fileName,
      final String? contentMimeType,
      final EpubContentType? contentType,
      final List<int>? content}) = _$EpubByteContentFileImpl;

  @override
  String? get fileName;
  @override
  String? get contentMimeType;
  @override
  EpubContentType? get contentType;
  @override
  List<int>? get content;

  /// Create a copy of EpubByteContentFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubByteContentFileImplCopyWith<_$EpubByteContentFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
