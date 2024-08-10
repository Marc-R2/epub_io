// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubContainer {
  XMLInfo get xmlInfo => throw _privateConstructorUsedError;
  EpubContainerRootFile get rootFile => throw _privateConstructorUsedError;
  List<EpubContainerRootFile> get rootFiles =>
      throw _privateConstructorUsedError;
  String? get xmlns => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubContainerCopyWith<EpubContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubContainerCopyWith<$Res> {
  factory $EpubContainerCopyWith(
          EpubContainer value, $Res Function(EpubContainer) then) =
      _$EpubContainerCopyWithImpl<$Res, EpubContainer>;
  @useResult
  $Res call(
      {XMLInfo xmlInfo,
      EpubContainerRootFile rootFile,
      List<EpubContainerRootFile> rootFiles,
      String? xmlns,
      String? version});

  $XMLInfoCopyWith<$Res> get xmlInfo;
  $EpubContainerRootFileCopyWith<$Res> get rootFile;
}

/// @nodoc
class _$EpubContainerCopyWithImpl<$Res, $Val extends EpubContainer>
    implements $EpubContainerCopyWith<$Res> {
  _$EpubContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlInfo = null,
    Object? rootFile = null,
    Object? rootFiles = null,
    Object? xmlns = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      xmlInfo: null == xmlInfo
          ? _value.xmlInfo
          : xmlInfo // ignore: cast_nullable_to_non_nullable
              as XMLInfo,
      rootFile: null == rootFile
          ? _value.rootFile
          : rootFile // ignore: cast_nullable_to_non_nullable
              as EpubContainerRootFile,
      rootFiles: null == rootFiles
          ? _value.rootFiles
          : rootFiles // ignore: cast_nullable_to_non_nullable
              as List<EpubContainerRootFile>,
      xmlns: freezed == xmlns
          ? _value.xmlns
          : xmlns // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XMLInfoCopyWith<$Res> get xmlInfo {
    return $XMLInfoCopyWith<$Res>(_value.xmlInfo, (value) {
      return _then(_value.copyWith(xmlInfo: value) as $Val);
    });
  }

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubContainerRootFileCopyWith<$Res> get rootFile {
    return $EpubContainerRootFileCopyWith<$Res>(_value.rootFile, (value) {
      return _then(_value.copyWith(rootFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpubContainerImplCopyWith<$Res>
    implements $EpubContainerCopyWith<$Res> {
  factory _$$EpubContainerImplCopyWith(
          _$EpubContainerImpl value, $Res Function(_$EpubContainerImpl) then) =
      __$$EpubContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {XMLInfo xmlInfo,
      EpubContainerRootFile rootFile,
      List<EpubContainerRootFile> rootFiles,
      String? xmlns,
      String? version});

  @override
  $XMLInfoCopyWith<$Res> get xmlInfo;
  @override
  $EpubContainerRootFileCopyWith<$Res> get rootFile;
}

/// @nodoc
class __$$EpubContainerImplCopyWithImpl<$Res>
    extends _$EpubContainerCopyWithImpl<$Res, _$EpubContainerImpl>
    implements _$$EpubContainerImplCopyWith<$Res> {
  __$$EpubContainerImplCopyWithImpl(
      _$EpubContainerImpl _value, $Res Function(_$EpubContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlInfo = null,
    Object? rootFile = null,
    Object? rootFiles = null,
    Object? xmlns = freezed,
    Object? version = freezed,
  }) {
    return _then(_$EpubContainerImpl(
      xmlInfo: null == xmlInfo
          ? _value.xmlInfo
          : xmlInfo // ignore: cast_nullable_to_non_nullable
              as XMLInfo,
      rootFile: null == rootFile
          ? _value.rootFile
          : rootFile // ignore: cast_nullable_to_non_nullable
              as EpubContainerRootFile,
      rootFiles: null == rootFiles
          ? _value._rootFiles
          : rootFiles // ignore: cast_nullable_to_non_nullable
              as List<EpubContainerRootFile>,
      xmlns: freezed == xmlns
          ? _value.xmlns
          : xmlns // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpubContainerImpl extends _EpubContainer {
  const _$EpubContainerImpl(
      {required this.xmlInfo,
      required this.rootFile,
      required final List<EpubContainerRootFile> rootFiles,
      this.xmlns,
      this.version})
      : _rootFiles = rootFiles,
        super._();

  @override
  final XMLInfo xmlInfo;
  @override
  final EpubContainerRootFile rootFile;
  final List<EpubContainerRootFile> _rootFiles;
  @override
  List<EpubContainerRootFile> get rootFiles {
    if (_rootFiles is EqualUnmodifiableListView) return _rootFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rootFiles);
  }

  @override
  final String? xmlns;
  @override
  final String? version;

  @override
  String toString() {
    return 'EpubContainer(xmlInfo: $xmlInfo, rootFile: $rootFile, rootFiles: $rootFiles, xmlns: $xmlns, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubContainerImpl &&
            (identical(other.xmlInfo, xmlInfo) || other.xmlInfo == xmlInfo) &&
            (identical(other.rootFile, rootFile) ||
                other.rootFile == rootFile) &&
            const DeepCollectionEquality()
                .equals(other._rootFiles, _rootFiles) &&
            (identical(other.xmlns, xmlns) || other.xmlns == xmlns) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, xmlInfo, rootFile,
      const DeepCollectionEquality().hash(_rootFiles), xmlns, version);

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubContainerImplCopyWith<_$EpubContainerImpl> get copyWith =>
      __$$EpubContainerImplCopyWithImpl<_$EpubContainerImpl>(this, _$identity);
}

abstract class _EpubContainer extends EpubContainer {
  const factory _EpubContainer(
      {required final XMLInfo xmlInfo,
      required final EpubContainerRootFile rootFile,
      required final List<EpubContainerRootFile> rootFiles,
      final String? xmlns,
      final String? version}) = _$EpubContainerImpl;
  const _EpubContainer._() : super._();

  @override
  XMLInfo get xmlInfo;
  @override
  EpubContainerRootFile get rootFile;
  @override
  List<EpubContainerRootFile> get rootFiles;
  @override
  String? get xmlns;
  @override
  String? get version;

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubContainerImplCopyWith<_$EpubContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$XMLInfo {
  String? get xmlVersion => throw _privateConstructorUsedError;
  String? get xmlEncoding => throw _privateConstructorUsedError;
  bool? get xmlStandalone => throw _privateConstructorUsedError;

  /// Create a copy of XMLInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $XMLInfoCopyWith<XMLInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XMLInfoCopyWith<$Res> {
  factory $XMLInfoCopyWith(XMLInfo value, $Res Function(XMLInfo) then) =
      _$XMLInfoCopyWithImpl<$Res, XMLInfo>;
  @useResult
  $Res call({String? xmlVersion, String? xmlEncoding, bool? xmlStandalone});
}

/// @nodoc
class _$XMLInfoCopyWithImpl<$Res, $Val extends XMLInfo>
    implements $XMLInfoCopyWith<$Res> {
  _$XMLInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XMLInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlVersion = freezed,
    Object? xmlEncoding = freezed,
    Object? xmlStandalone = freezed,
  }) {
    return _then(_value.copyWith(
      xmlVersion: freezed == xmlVersion
          ? _value.xmlVersion
          : xmlVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlEncoding: freezed == xmlEncoding
          ? _value.xmlEncoding
          : xmlEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlStandalone: freezed == xmlStandalone
          ? _value.xmlStandalone
          : xmlStandalone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$XMLInfoImplCopyWith<$Res> implements $XMLInfoCopyWith<$Res> {
  factory _$$XMLInfoImplCopyWith(
          _$XMLInfoImpl value, $Res Function(_$XMLInfoImpl) then) =
      __$$XMLInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? xmlVersion, String? xmlEncoding, bool? xmlStandalone});
}

/// @nodoc
class __$$XMLInfoImplCopyWithImpl<$Res>
    extends _$XMLInfoCopyWithImpl<$Res, _$XMLInfoImpl>
    implements _$$XMLInfoImplCopyWith<$Res> {
  __$$XMLInfoImplCopyWithImpl(
      _$XMLInfoImpl _value, $Res Function(_$XMLInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of XMLInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlVersion = freezed,
    Object? xmlEncoding = freezed,
    Object? xmlStandalone = freezed,
  }) {
    return _then(_$XMLInfoImpl(
      xmlVersion: freezed == xmlVersion
          ? _value.xmlVersion
          : xmlVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlEncoding: freezed == xmlEncoding
          ? _value.xmlEncoding
          : xmlEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
      xmlStandalone: freezed == xmlStandalone
          ? _value.xmlStandalone
          : xmlStandalone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$XMLInfoImpl extends _XMLInfo {
  const _$XMLInfoImpl({this.xmlVersion, this.xmlEncoding, this.xmlStandalone})
      : super._();

  @override
  final String? xmlVersion;
  @override
  final String? xmlEncoding;
  @override
  final bool? xmlStandalone;

  @override
  String toString() {
    return 'XMLInfo(xmlVersion: $xmlVersion, xmlEncoding: $xmlEncoding, xmlStandalone: $xmlStandalone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XMLInfoImpl &&
            (identical(other.xmlVersion, xmlVersion) ||
                other.xmlVersion == xmlVersion) &&
            (identical(other.xmlEncoding, xmlEncoding) ||
                other.xmlEncoding == xmlEncoding) &&
            (identical(other.xmlStandalone, xmlStandalone) ||
                other.xmlStandalone == xmlStandalone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, xmlVersion, xmlEncoding, xmlStandalone);

  /// Create a copy of XMLInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XMLInfoImplCopyWith<_$XMLInfoImpl> get copyWith =>
      __$$XMLInfoImplCopyWithImpl<_$XMLInfoImpl>(this, _$identity);
}

abstract class _XMLInfo extends XMLInfo {
  const factory _XMLInfo(
      {final String? xmlVersion,
      final String? xmlEncoding,
      final bool? xmlStandalone}) = _$XMLInfoImpl;
  const _XMLInfo._() : super._();

  @override
  String? get xmlVersion;
  @override
  String? get xmlEncoding;
  @override
  bool? get xmlStandalone;

  /// Create a copy of XMLInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XMLInfoImplCopyWith<_$XMLInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpubContainerRootFile _$EpubContainerRootFileFromJson(
    Map<String, dynamic> json) {
  return _EpubContainerRootFile.fromJson(json);
}

/// @nodoc
mixin _$EpubContainerRootFile {
  @JsonKey(name: 'full-path')
  String get fullPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'media-type')
  String? get mediaType => throw _privateConstructorUsedError;

  /// Serializes this EpubContainerRootFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpubContainerRootFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubContainerRootFileCopyWith<EpubContainerRootFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubContainerRootFileCopyWith<$Res> {
  factory $EpubContainerRootFileCopyWith(EpubContainerRootFile value,
          $Res Function(EpubContainerRootFile) then) =
      _$EpubContainerRootFileCopyWithImpl<$Res, EpubContainerRootFile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full-path') String fullPath,
      @JsonKey(name: 'media-type') String? mediaType});
}

/// @nodoc
class _$EpubContainerRootFileCopyWithImpl<$Res,
        $Val extends EpubContainerRootFile>
    implements $EpubContainerRootFileCopyWith<$Res> {
  _$EpubContainerRootFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubContainerRootFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPath = null,
    Object? mediaType = freezed,
  }) {
    return _then(_value.copyWith(
      fullPath: null == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubContainerRootFileImplCopyWith<$Res>
    implements $EpubContainerRootFileCopyWith<$Res> {
  factory _$$EpubContainerRootFileImplCopyWith(
          _$EpubContainerRootFileImpl value,
          $Res Function(_$EpubContainerRootFileImpl) then) =
      __$$EpubContainerRootFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full-path') String fullPath,
      @JsonKey(name: 'media-type') String? mediaType});
}

/// @nodoc
class __$$EpubContainerRootFileImplCopyWithImpl<$Res>
    extends _$EpubContainerRootFileCopyWithImpl<$Res,
        _$EpubContainerRootFileImpl>
    implements _$$EpubContainerRootFileImplCopyWith<$Res> {
  __$$EpubContainerRootFileImplCopyWithImpl(_$EpubContainerRootFileImpl _value,
      $Res Function(_$EpubContainerRootFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubContainerRootFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPath = null,
    Object? mediaType = freezed,
  }) {
    return _then(_$EpubContainerRootFileImpl(
      fullPath: null == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpubContainerRootFileImpl extends _EpubContainerRootFile {
  const _$EpubContainerRootFileImpl(
      {@JsonKey(name: 'full-path') required this.fullPath,
      @JsonKey(name: 'media-type') this.mediaType})
      : super._();

  factory _$EpubContainerRootFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpubContainerRootFileImplFromJson(json);

  @override
  @JsonKey(name: 'full-path')
  final String fullPath;
  @override
  @JsonKey(name: 'media-type')
  final String? mediaType;

  @override
  String toString() {
    return 'EpubContainerRootFile(fullPath: $fullPath, mediaType: $mediaType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubContainerRootFileImpl &&
            (identical(other.fullPath, fullPath) ||
                other.fullPath == fullPath) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullPath, mediaType);

  /// Create a copy of EpubContainerRootFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubContainerRootFileImplCopyWith<_$EpubContainerRootFileImpl>
      get copyWith => __$$EpubContainerRootFileImplCopyWithImpl<
          _$EpubContainerRootFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpubContainerRootFileImplToJson(
      this,
    );
  }
}

abstract class _EpubContainerRootFile extends EpubContainerRootFile {
  const factory _EpubContainerRootFile(
          {@JsonKey(name: 'full-path') required final String fullPath,
          @JsonKey(name: 'media-type') final String? mediaType}) =
      _$EpubContainerRootFileImpl;
  const _EpubContainerRootFile._() : super._();

  factory _EpubContainerRootFile.fromJson(Map<String, dynamic> json) =
      _$EpubContainerRootFileImpl.fromJson;

  @override
  @JsonKey(name: 'full-path')
  String get fullPath;
  @override
  @JsonKey(name: 'media-type')
  String? get mediaType;

  /// Create a copy of EpubContainerRootFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubContainerRootFileImplCopyWith<_$EpubContainerRootFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
