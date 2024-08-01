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
  EpubContainerXML get containerXML => throw _privateConstructorUsedError;
  EpubContainerRootFile get rootFile => throw _privateConstructorUsedError;
  String? get xmlns => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  List<EpubContainerRootFile>? get rootFiles =>
      throw _privateConstructorUsedError;

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
      {EpubContainerXML containerXML,
      EpubContainerRootFile rootFile,
      String? xmlns,
      String? version,
      List<EpubContainerRootFile>? rootFiles});

  $EpubContainerXMLCopyWith<$Res> get containerXML;
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
    Object? containerXML = null,
    Object? rootFile = null,
    Object? xmlns = freezed,
    Object? version = freezed,
    Object? rootFiles = freezed,
  }) {
    return _then(_value.copyWith(
      containerXML: null == containerXML
          ? _value.containerXML
          : containerXML // ignore: cast_nullable_to_non_nullable
              as EpubContainerXML,
      rootFile: null == rootFile
          ? _value.rootFile
          : rootFile // ignore: cast_nullable_to_non_nullable
              as EpubContainerRootFile,
      xmlns: freezed == xmlns
          ? _value.xmlns
          : xmlns // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      rootFiles: freezed == rootFiles
          ? _value.rootFiles
          : rootFiles // ignore: cast_nullable_to_non_nullable
              as List<EpubContainerRootFile>?,
    ) as $Val);
  }

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubContainerXMLCopyWith<$Res> get containerXML {
    return $EpubContainerXMLCopyWith<$Res>(_value.containerXML, (value) {
      return _then(_value.copyWith(containerXML: value) as $Val);
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
      {EpubContainerXML containerXML,
      EpubContainerRootFile rootFile,
      String? xmlns,
      String? version,
      List<EpubContainerRootFile>? rootFiles});

  @override
  $EpubContainerXMLCopyWith<$Res> get containerXML;
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
    Object? containerXML = null,
    Object? rootFile = null,
    Object? xmlns = freezed,
    Object? version = freezed,
    Object? rootFiles = freezed,
  }) {
    return _then(_$EpubContainerImpl(
      containerXML: null == containerXML
          ? _value.containerXML
          : containerXML // ignore: cast_nullable_to_non_nullable
              as EpubContainerXML,
      rootFile: null == rootFile
          ? _value.rootFile
          : rootFile // ignore: cast_nullable_to_non_nullable
              as EpubContainerRootFile,
      xmlns: freezed == xmlns
          ? _value.xmlns
          : xmlns // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      rootFiles: freezed == rootFiles
          ? _value._rootFiles
          : rootFiles // ignore: cast_nullable_to_non_nullable
              as List<EpubContainerRootFile>?,
    ));
  }
}

/// @nodoc

class _$EpubContainerImpl extends _EpubContainer {
  const _$EpubContainerImpl(
      {required this.containerXML,
      required this.rootFile,
      this.xmlns,
      this.version,
      final List<EpubContainerRootFile>? rootFiles})
      : _rootFiles = rootFiles,
        super._();

  @override
  final EpubContainerXML containerXML;
  @override
  final EpubContainerRootFile rootFile;
  @override
  final String? xmlns;
  @override
  final String? version;
  final List<EpubContainerRootFile>? _rootFiles;
  @override
  List<EpubContainerRootFile>? get rootFiles {
    final value = _rootFiles;
    if (value == null) return null;
    if (_rootFiles is EqualUnmodifiableListView) return _rootFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpubContainer(containerXML: $containerXML, rootFile: $rootFile, xmlns: $xmlns, version: $version, rootFiles: $rootFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubContainerImpl &&
            (identical(other.containerXML, containerXML) ||
                other.containerXML == containerXML) &&
            (identical(other.rootFile, rootFile) ||
                other.rootFile == rootFile) &&
            (identical(other.xmlns, xmlns) || other.xmlns == xmlns) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._rootFiles, _rootFiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, containerXML, rootFile, xmlns,
      version, const DeepCollectionEquality().hash(_rootFiles));

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
      {required final EpubContainerXML containerXML,
      required final EpubContainerRootFile rootFile,
      final String? xmlns,
      final String? version,
      final List<EpubContainerRootFile>? rootFiles}) = _$EpubContainerImpl;
  const _EpubContainer._() : super._();

  @override
  EpubContainerXML get containerXML;
  @override
  EpubContainerRootFile get rootFile;
  @override
  String? get xmlns;
  @override
  String? get version;
  @override
  List<EpubContainerRootFile>? get rootFiles;

  /// Create a copy of EpubContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubContainerImplCopyWith<_$EpubContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpubContainerXML {
  String? get xmlVersion => throw _privateConstructorUsedError;
  String? get xmlEncoding => throw _privateConstructorUsedError;
  bool? get xmlStandalone => throw _privateConstructorUsedError;

  /// Create a copy of EpubContainerXML
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubContainerXMLCopyWith<EpubContainerXML> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubContainerXMLCopyWith<$Res> {
  factory $EpubContainerXMLCopyWith(
          EpubContainerXML value, $Res Function(EpubContainerXML) then) =
      _$EpubContainerXMLCopyWithImpl<$Res, EpubContainerXML>;
  @useResult
  $Res call({String? xmlVersion, String? xmlEncoding, bool? xmlStandalone});
}

/// @nodoc
class _$EpubContainerXMLCopyWithImpl<$Res, $Val extends EpubContainerXML>
    implements $EpubContainerXMLCopyWith<$Res> {
  _$EpubContainerXMLCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubContainerXML
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
abstract class _$$EpubContainerXMLImplCopyWith<$Res>
    implements $EpubContainerXMLCopyWith<$Res> {
  factory _$$EpubContainerXMLImplCopyWith(_$EpubContainerXMLImpl value,
          $Res Function(_$EpubContainerXMLImpl) then) =
      __$$EpubContainerXMLImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? xmlVersion, String? xmlEncoding, bool? xmlStandalone});
}

/// @nodoc
class __$$EpubContainerXMLImplCopyWithImpl<$Res>
    extends _$EpubContainerXMLCopyWithImpl<$Res, _$EpubContainerXMLImpl>
    implements _$$EpubContainerXMLImplCopyWith<$Res> {
  __$$EpubContainerXMLImplCopyWithImpl(_$EpubContainerXMLImpl _value,
      $Res Function(_$EpubContainerXMLImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubContainerXML
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlVersion = freezed,
    Object? xmlEncoding = freezed,
    Object? xmlStandalone = freezed,
  }) {
    return _then(_$EpubContainerXMLImpl(
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

class _$EpubContainerXMLImpl implements _EpubContainerXML {
  const _$EpubContainerXMLImpl(
      {this.xmlVersion, this.xmlEncoding, this.xmlStandalone});

  @override
  final String? xmlVersion;
  @override
  final String? xmlEncoding;
  @override
  final bool? xmlStandalone;

  @override
  String toString() {
    return 'EpubContainerXML(xmlVersion: $xmlVersion, xmlEncoding: $xmlEncoding, xmlStandalone: $xmlStandalone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubContainerXMLImpl &&
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

  /// Create a copy of EpubContainerXML
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubContainerXMLImplCopyWith<_$EpubContainerXMLImpl> get copyWith =>
      __$$EpubContainerXMLImplCopyWithImpl<_$EpubContainerXMLImpl>(
          this, _$identity);
}

abstract class _EpubContainerXML implements EpubContainerXML {
  const factory _EpubContainerXML(
      {final String? xmlVersion,
      final String? xmlEncoding,
      final bool? xmlStandalone}) = _$EpubContainerXMLImpl;

  @override
  String? get xmlVersion;
  @override
  String? get xmlEncoding;
  @override
  bool? get xmlStandalone;

  /// Create a copy of EpubContainerXML
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubContainerXMLImplCopyWith<_$EpubContainerXMLImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpubContainerRootFile {
  String get fullPath => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;

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
  $Res call({String fullPath, String? mediaType});
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
  $Res call({String fullPath, String? mediaType});
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

class _$EpubContainerRootFileImpl implements _EpubContainerRootFile {
  const _$EpubContainerRootFileImpl({required this.fullPath, this.mediaType});

  @override
  final String fullPath;
  @override
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
}

abstract class _EpubContainerRootFile implements EpubContainerRootFile {
  const factory _EpubContainerRootFile(
      {required final String fullPath,
      final String? mediaType}) = _$EpubContainerRootFileImpl;

  @override
  String get fullPath;
  @override
  String? get mediaType;

  /// Create a copy of EpubContainerRootFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubContainerRootFileImplCopyWith<_$EpubContainerRootFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
