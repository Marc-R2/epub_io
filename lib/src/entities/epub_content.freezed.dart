// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpubContent {
  Map<String, EpubTextContentFile> get html =>
      throw _privateConstructorUsedError;
  Map<String, EpubTextContentFile> get css =>
      throw _privateConstructorUsedError;
  Map<String, EpubByteContentFile> get images =>
      throw _privateConstructorUsedError;
  Map<String, EpubByteContentFile> get fonts =>
      throw _privateConstructorUsedError;
  Map<String, EpubContentFile<dynamic>> get allFiles =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpubContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubContentCopyWith<EpubContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubContentCopyWith<$Res> {
  factory $EpubContentCopyWith(
          EpubContent value, $Res Function(EpubContent) then) =
      _$EpubContentCopyWithImpl<$Res, EpubContent>;
  @useResult
  $Res call(
      {Map<String, EpubTextContentFile> html,
      Map<String, EpubTextContentFile> css,
      Map<String, EpubByteContentFile> images,
      Map<String, EpubByteContentFile> fonts,
      Map<String, EpubContentFile<dynamic>> allFiles});
}

/// @nodoc
class _$EpubContentCopyWithImpl<$Res, $Val extends EpubContent>
    implements $EpubContentCopyWith<$Res> {
  _$EpubContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpubContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
    Object? css = null,
    Object? images = null,
    Object? fonts = null,
    Object? allFiles = null,
  }) {
    return _then(_value.copyWith(
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubTextContentFile>,
      css: null == css
          ? _value.css
          : css // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubTextContentFile>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubByteContentFile>,
      fonts: null == fonts
          ? _value.fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubByteContentFile>,
      allFiles: null == allFiles
          ? _value.allFiles
          : allFiles // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubContentFile<dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubContentImplCopyWith<$Res>
    implements $EpubContentCopyWith<$Res> {
  factory _$$EpubContentImplCopyWith(
          _$EpubContentImpl value, $Res Function(_$EpubContentImpl) then) =
      __$$EpubContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, EpubTextContentFile> html,
      Map<String, EpubTextContentFile> css,
      Map<String, EpubByteContentFile> images,
      Map<String, EpubByteContentFile> fonts,
      Map<String, EpubContentFile<dynamic>> allFiles});
}

/// @nodoc
class __$$EpubContentImplCopyWithImpl<$Res>
    extends _$EpubContentCopyWithImpl<$Res, _$EpubContentImpl>
    implements _$$EpubContentImplCopyWith<$Res> {
  __$$EpubContentImplCopyWithImpl(
      _$EpubContentImpl _value, $Res Function(_$EpubContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpubContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
    Object? css = null,
    Object? images = null,
    Object? fonts = null,
    Object? allFiles = null,
  }) {
    return _then(_$EpubContentImpl(
      html: null == html
          ? _value._html
          : html // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubTextContentFile>,
      css: null == css
          ? _value._css
          : css // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubTextContentFile>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubByteContentFile>,
      fonts: null == fonts
          ? _value._fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubByteContentFile>,
      allFiles: null == allFiles
          ? _value._allFiles
          : allFiles // ignore: cast_nullable_to_non_nullable
              as Map<String, EpubContentFile<dynamic>>,
    ));
  }
}

/// @nodoc

class _$EpubContentImpl implements _EpubContent {
  const _$EpubContentImpl(
      {final Map<String, EpubTextContentFile> html = const {},
      final Map<String, EpubTextContentFile> css = const {},
      final Map<String, EpubByteContentFile> images = const {},
      final Map<String, EpubByteContentFile> fonts = const {},
      final Map<String, EpubContentFile<dynamic>> allFiles = const {}})
      : _html = html,
        _css = css,
        _images = images,
        _fonts = fonts,
        _allFiles = allFiles;

  final Map<String, EpubTextContentFile> _html;
  @override
  @JsonKey()
  Map<String, EpubTextContentFile> get html {
    if (_html is EqualUnmodifiableMapView) return _html;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_html);
  }

  final Map<String, EpubTextContentFile> _css;
  @override
  @JsonKey()
  Map<String, EpubTextContentFile> get css {
    if (_css is EqualUnmodifiableMapView) return _css;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_css);
  }

  final Map<String, EpubByteContentFile> _images;
  @override
  @JsonKey()
  Map<String, EpubByteContentFile> get images {
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_images);
  }

  final Map<String, EpubByteContentFile> _fonts;
  @override
  @JsonKey()
  Map<String, EpubByteContentFile> get fonts {
    if (_fonts is EqualUnmodifiableMapView) return _fonts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fonts);
  }

  final Map<String, EpubContentFile<dynamic>> _allFiles;
  @override
  @JsonKey()
  Map<String, EpubContentFile<dynamic>> get allFiles {
    if (_allFiles is EqualUnmodifiableMapView) return _allFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allFiles);
  }

  @override
  String toString() {
    return 'EpubContent(html: $html, css: $css, images: $images, fonts: $fonts, allFiles: $allFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubContentImpl &&
            const DeepCollectionEquality().equals(other._html, _html) &&
            const DeepCollectionEquality().equals(other._css, _css) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._fonts, _fonts) &&
            const DeepCollectionEquality().equals(other._allFiles, _allFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_html),
      const DeepCollectionEquality().hash(_css),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_fonts),
      const DeepCollectionEquality().hash(_allFiles));

  /// Create a copy of EpubContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubContentImplCopyWith<_$EpubContentImpl> get copyWith =>
      __$$EpubContentImplCopyWithImpl<_$EpubContentImpl>(this, _$identity);
}

abstract class _EpubContent implements EpubContent {
  const factory _EpubContent(
          {final Map<String, EpubTextContentFile> html,
          final Map<String, EpubTextContentFile> css,
          final Map<String, EpubByteContentFile> images,
          final Map<String, EpubByteContentFile> fonts,
          final Map<String, EpubContentFile<dynamic>> allFiles}) =
      _$EpubContentImpl;

  @override
  Map<String, EpubTextContentFile> get html;
  @override
  Map<String, EpubTextContentFile> get css;
  @override
  Map<String, EpubByteContentFile> get images;
  @override
  Map<String, EpubByteContentFile> get fonts;
  @override
  Map<String, EpubContentFile<dynamic>> get allFiles;

  /// Create a copy of EpubContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubContentImplCopyWith<_$EpubContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
