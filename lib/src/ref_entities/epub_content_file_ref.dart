import 'dart:async';

import 'package:epub_io/epub_io.dart';

mixin EpubContentFileRef<T> {
  EpubArchive get epubArchive;

  EpubSchema get schema;

  String? get fileName;

  EpubContentType? get contentType;

  String? get contentMimeType;

  EpubFile getContentFileEntry() {
    final u = EpubUri.parse(schema.epubContainer.contentDirectoryPath);
    return epubArchive.getFile(
      u.resolve(fileName!),
      allowByName: true,
    );
  }

  List<int> getContentStream() => getContentFileEntry().content;

  Future<T> readContent();

  Future<EpubContentFile<T>> read();
}
