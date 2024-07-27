import 'package:epub_io/src/entities/epub_content_type.dart';

abstract class EpubContentFile {
  const EpubContentFile({
    this.fileName,
    this.contentType,
    this.contentMimeType,
  });
  final String? fileName;
  final EpubContentType? contentType;
  final String? contentMimeType;

  @override
  int get hashCode =>
      fileName.hashCode ^ contentType.hashCode ^ contentMimeType.hashCode;

  @override
  bool operator ==(covariant EpubContentFile other) {
    if (identical(this, other)) return true;

    return other.fileName == fileName &&
        other.contentType == contentType &&
        other.contentMimeType == contentMimeType;
  }
}
