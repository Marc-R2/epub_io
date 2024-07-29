import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_container.freezed.dart';

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
class EpubContainerRootFile with _$EpubContainerRootFile {
  const factory EpubContainerRootFile({
    required String fullPath,
    String? mediaType,
  }) = _EpubContainerRootFile;
}
