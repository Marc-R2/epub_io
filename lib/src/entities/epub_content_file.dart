import 'package:epub_io/src/entities/epub_content_type.dart';

abstract class EpubContentFile {
  String? get fileName;

  EpubContentType? get contentType;

  String? get contentMimeType;
}
