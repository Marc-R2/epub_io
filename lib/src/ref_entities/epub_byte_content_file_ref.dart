import 'dart:async';

import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';

class EpubByteContentFileRef extends EpubContentFileRef {
  EpubByteContentFileRef({
    required super.epubBookRef,
    super.fileName,
    super.contentMimeType,
    super.contentType,
  });

  Future<List<int>> readContent() => readContentAsBytes();
}
