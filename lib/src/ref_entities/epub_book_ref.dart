import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/chapter_reader.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_book_ref.freezed.dart';

@freezed
class EpubBookRef with _$EpubBookRef {
  const factory EpubBookRef({
    required EpubArchive epubArchive,
    required EpubSchema schema,
    String? title,
    @Default([]) List<EpubMetadataCreator> authors,
    EpubContentRef? content,
  }) = _EpubBookRef;

  const EpubBookRef._();

  List<EpubChapterRef> getChapters() => ChapterReader.getChapters(this);

  // Future<List<int>> readCoverBytes() =>
  //     BookCoverReader.readBookCoverAsBytes(this);

  // Future<Image?> readCover() => BookCoverReader.readBookCoverImage(this);

  String? get author {
    if (authors.isEmpty) return null;
    return authors.map((author) => author.creator).join(', ');
  }

  // EpubContentRef? get content => ContentReader.parseContentMap(this);

  EpubBook asEpubBook({
    required EpubContent content,
    required List<EpubChapter<dynamic>> chapters,
    Image? coverImage,
  }) {
    return EpubBook(
      title: title,
      authors: authors,
      schema: schema,
      content: content,
      chapters: chapters,
      coverImage: coverImage,
    );
  }
}
