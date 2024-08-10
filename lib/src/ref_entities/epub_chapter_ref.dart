import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_chapter_ref.freezed.dart';

@freezed
class EpubChapterRef with _$EpubChapterRef {
  const factory EpubChapterRef({
    required EpubContentFileRef<dynamic> epubContentFileRef,
    required String contentFileName,
    required List<EpubChapterRef> subChapters,
    String? title,
    String? anchor,
  }) = _EpubChapterRef;

  const EpubChapterRef._();

  Future<EpubChapter<dynamic>> asChapter() async {
    final content = await epubContentFileRef.readContent();

    final sub = await Future.wait<EpubChapter<dynamic>>(
      subChapters.map((e) => e.asChapter()),
    );

    if (content is String) {
      return EpubChapterText(
        title: title,
        contentFileName: contentFileName,
        anchor: anchor,
        content: content,
        subChapters: sub,
      );
    } else if (content is List<int>) {
      return EpubChapterBytes(
        title: title,
        contentFileName: contentFileName,
        anchor: anchor,
        content: content,
        subChapters: sub,
      );
    } else {
      throw Exception('Unknown type of epubContentFileRef');
    }
  }
}
