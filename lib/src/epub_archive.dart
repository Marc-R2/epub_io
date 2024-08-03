import 'package:archive/archive.dart';
import 'package:collection/collection.dart';

class EpubFile {
  EpubFile(this.epubArchive, this.uri);

  final ArchiveFile epubArchive;
  final Uri uri;

  // TODO(Marc-R2): unknown casting - check if it's correct
  List<int>? get contentOrNull => epubArchive.content as List<int>?;

  List<int> get content =>
      contentOrNull ?? (throw ArgumentError('Content not found: $uri'));

  String get contentUtf8 => String.fromCharCodes(content);
}

class EpubArchive {
  EpubArchive(this.archive);

  final Archive archive;

  ArchiveFile? _getFileOrNull(Uri uri, {bool allowByName = false}) {
    final file = archive.findFile(uri.path);
    if (file != null || !allowByName) return file;
    return archive.files
        .firstWhereOrNull((file) => file.name.endsWith(uri.pathSegments.last));
  }

  EpubFile? getFileOrNull(Uri uri, {bool allowByName = false}) {
    final file = _getFileOrNull(uri, allowByName: allowByName);
    return file != null ? EpubFile(file, uri) : null;
  }

  EpubFile getFile(Uri uri, {bool allowByName = false}) =>
      getFileOrNull(uri, allowByName: allowByName) ??
      (throw ArgumentError('File not found: $uri (allowByName: $allowByName)'));
}
