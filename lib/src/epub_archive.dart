import 'package:archive/archive.dart';
import 'package:collection/collection.dart';

mixin EpubArchiveReader {
  EpubArchive get epubArchive;
}

class EpubUri {
  EpubUri(this.segments);

  factory EpubUri.parse(String contentDirectoryPath) {
    final segments = contentDirectoryPath.split('/');
    return EpubUri(segments);
  }

  final List<String> segments;

  String get path => segments.join('/');

  EpubUri resolve(String s) =>
      EpubUri([...segments, ...EpubUri.parse(s).segments]);
}

class EpubFile {
  EpubFile(this.epubArchive, this.uri);

  final ArchiveFile epubArchive;
  final EpubUri uri;

  // TODO(Marc-R2): unknown casting - check if it's correct
  List<int>? get contentOrNull => epubArchive.content as List<int>?;

  List<int> get content =>
      contentOrNull ?? (throw ArgumentError('Content not found: $uri'));

  String get contentUtf8 => String.fromCharCodes(content);
}

class EpubArchive {
  EpubArchive(this.archive);

  final Archive archive;

  ArchiveFile? _getFileOrNull(EpubUri uri, {bool allowByName = false}) {
    final file = archive.findFile(uri.path);
    if (file != null || !allowByName) return file;
    return archive.files
        .firstWhereOrNull((file) => file.name.endsWith(uri.segments.last));
  }

  EpubFile? getFileOrNull(EpubUri uri, {bool allowByName = false}) {
    final file = _getFileOrNull(uri, allowByName: allowByName);
    return file != null ? EpubFile(file, uri) : null;
  }

  EpubFile getFile(EpubUri uri, {bool allowByName = false}) =>
      getFileOrNull(uri, allowByName: allowByName) ??
      (throw ArgumentError('File not found: $uri (allowByName: $allowByName)'));
}
