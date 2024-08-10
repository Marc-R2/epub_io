import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_byte_content_file_ref.freezed.dart';

@freezed
class EpubByteContentFileRef
    with _$EpubByteContentFileRef, EpubContentFileRef<List<int>> {
  const factory EpubByteContentFileRef({
    required EpubArchive epubArchive,
    required EpubSchema schema,
    required String fileName,
    required String contentMimeType,
    required EpubContentType contentType,
  }) = _EpubByteContentFileRef;

  const EpubByteContentFileRef._();

  @override
  Future<List<int>> readContent() async => getContentStream();

  @override
  Future<EpubByteContentFile> read() async => EpubByteContentFile(
        fileName: fileName,
        contentType: contentType,
        contentMimeType: contentMimeType,
        content: await readContent(),
      );
}
