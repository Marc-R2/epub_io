import 'dart:async';

import 'package:archive/archive.dart';
import 'package:epub_io/src/entities/epub_book.dart';
import 'package:epub_io/src/entities/epub_chapter.dart';
import 'package:epub_io/src/entities/epub_content.dart';
import 'package:epub_io/src/entities/epub_schema.dart';
import 'package:epub_io/src/readers/book_cover_reader.dart';
import 'package:epub_io/src/readers/chapter_reader.dart';
import 'package:epub_io/src/ref_entities/epub_chapter_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart';

part 'epub_book_ref.freezed.dart';

@freezed
class EpubBookRef with _$EpubBookRef {
  const factory EpubBookRef({
    required Archive epubArchive,
    String? title,
    String? author,
    @Default([]) List<String> authors,
    EpubSchema? schema,
    EpubContentRef? content,
  }) = _EpubBookRef;

  const EpubBookRef._();

  List<EpubChapterRef> getChapters() => ChapterReader.getChapters(this);

  Future<List<int>> readCoverBytes() =>
      BookCoverReader.readBookCoverAsBytes(this);

  Future<Image?> readCover() => BookCoverReader.readBookCoverImage(this);

  EpubBook asEpubBook({
    required EpubContent content,
    required List<EpubChapter<dynamic>> chapters,
    Image? coverImage,
  }) {
    return EpubBook(
      title: title,
      author: author,
      authors: authors,
      schema: schema,
      content: content,
      chapters: chapters,
      coverImage: coverImage,
    );
  }
}
