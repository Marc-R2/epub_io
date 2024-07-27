import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_byte_content_file_ref.freezed.dart';

@freezed
class EpubByteContentFileRef with _$EpubByteContentFileRef, EpubContentFileRef {
  const factory EpubByteContentFileRef({
    required EpubBookRef epubBookRef,
    String? fileName,
    String? contentMimeType,
    EpubContentType? contentType,
  }) = _EpubByteContentFileRef;

  const EpubByteContentFileRef._();

  Future<List<int>> readContent() => readContentAsBytes();
}
