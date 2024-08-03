import 'package:epub_io/src/entities/epub_content_type.dart';

abstract class EpubContentFile<T> {
  String? get fileName;

  EpubContentType? get contentType;

  String? get contentMimeType;

  T? get content;
}
