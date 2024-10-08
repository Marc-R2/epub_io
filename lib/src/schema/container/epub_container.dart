import 'package:epub_io/src/epub_read_write.dart';
import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_container.freezed.dart';

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
class EpubContainerRootFile
    with _$EpubContainerRootFile, EpubReadWrite<EpubContainerRootFile> {
  const factory EpubContainerRootFile({
    @JsonKey(name: 'full-path') required String fullPath,
    @JsonKey(name: 'media-type') String? mediaType,
  }) = _EpubContainerRootFile;

  const EpubContainerRootFile._();

  factory EpubContainerRootFile.readXml(XmlElement node) =>
      EpubContainerRootFile(
        fullPath: node.getAttribute('full-path')!,
        mediaType: node.getAttribute('media-type'),
      );

  @override
  EpubContainerRootFile readXMLBuilder(XmlElement node) =>
      EpubContainerRootFile.readXml(node);

  @override
  void writeXMLBuilder(XmlBuilder builder, [String? namespace]) {
    builder.element(
      'rootfile',
      namespace: namespace,
      attributes: {
        'full-path': fullPath,
        if (mediaType != null) 'media-type': mediaType!,
      },
    );
  }
}
