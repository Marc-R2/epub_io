import 'package:epub_io/src/entities/epub_content_file.dart';

class EpubTextContentFile extends EpubContentFile {
  const EpubTextContentFile({
    super.fileName,
    super.contentMimeType,
    super.contentType,
    this.content,
  });
  final String? content;

  @override
  int get hashCode =>
      fileName.hashCode ^
      contentMimeType.hashCode ^
      contentType.hashCode ^
      content.hashCode;

  @override
  bool operator ==(covariant EpubTextContentFile other) {
    if (identical(this, other)) return true;

    return other.fileName == fileName &&
        other.contentMimeType == contentMimeType &&
        other.contentType == contentType &&
        other.content == content;
  }
}
