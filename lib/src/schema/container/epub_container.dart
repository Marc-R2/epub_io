import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:epub_io/src/xml_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_container.freezed.dart';
part 'epub_container.g.dart';

@freezed
class EpubContainer with _$EpubContainer {
  const factory EpubContainer({
    required XMLInfo xmlInfo,
    required EpubContainerRootFile rootFile,
    required List<EpubContainerRootFile> rootFiles,
    String? xmlns,
    String? version,
  }) = _EpubContainer;

  const EpubContainer._();

  String get contentDirectoryPath =>
      ZipPathUtils.getDirectoryPath(rootFilePath);

  String get rootFilePath => rootFile.fullPath;
}

@freezed
class XMLInfo with _$XMLInfo {
  const factory XMLInfo({
    String? xmlVersion,
    String? xmlEncoding,
    bool? xmlStandalone,
  }) = _XMLInfo;

  const XMLInfo._();

  factory XMLInfo.fromXmlDocument(XmlDocument document) {
    final declaration = document.declaration;
    return XMLInfo(
      xmlVersion: declaration?.version,
      xmlEncoding: declaration?.encoding,
      xmlStandalone: declaration?.standalone,
    );
  }

  String get contentString {
    final sb = StringBuffer();
    if (xmlVersion != null) {
      sb.write('version="$xmlVersion"');
    }
    if (xmlEncoding != null) {
      if (sb.isNotEmpty) sb.write(' ');
      sb.write('encoding="$xmlEncoding"');
    }
    if (xmlStandalone != null) {
      if (sb.isNotEmpty) sb.write(' ');
      sb
        ..write('standalone="')
        ..write(xmlStandalone! ? 'yes' : 'no')
        ..write('"');
    }
    return sb.toString();
  }
}

@freezed
class EpubContainerRootFile with _$EpubContainerRootFile, XmlWrite {
  const factory EpubContainerRootFile({
    @JsonKey(name: 'full-path') required String fullPath,
    @JsonKey(name: 'media-type') String? mediaType,
  }) = _EpubContainerRootFile;

  factory EpubContainerRootFile.fromJson(Map<String, dynamic> json) =>
      _$EpubContainerRootFileFromJson(json);

  const EpubContainerRootFile._();
}
