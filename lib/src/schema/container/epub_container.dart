import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:epub_io/src/xml_write.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_container.freezed.dart';
part 'epub_container.g.dart';

@freezed
class EpubContainer with _$EpubContainer {
  const factory EpubContainer({
    required EpubContainerXML containerXML,
    required EpubContainerRootFile rootFile,
    String? xmlns,
    String? version,
    List<EpubContainerRootFile>? rootFiles,
  }) = _EpubContainer;

  const EpubContainer._();

  String get contentDirectoryPath =>
      ZipPathUtils.getDirectoryPath(rootFilePath);

  String get rootFilePath => rootFile.fullPath;
}

@freezed
class EpubContainerXML with _$EpubContainerXML {
  const factory EpubContainerXML({
    String? xmlVersion,
    String? xmlEncoding,
    bool? xmlStandalone,
  }) = _EpubContainerXML;
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
