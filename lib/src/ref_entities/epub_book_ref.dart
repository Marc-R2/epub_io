import 'dart:async';

import 'package:archive/archive.dart';
import 'package:collection/collection.dart';
import 'package:epub_io/src/entities/epub_schema.dart';
import 'package:epub_io/src/readers/book_cover_reader.dart';
import 'package:epub_io/src/readers/chapter_reader.dart';
import 'package:epub_io/src/ref_entities/epub_chapter_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:image/image.dart';

class EpubBookRef {
  const EpubBookRef({
    required this.epubArchive,
    this.title,
    this.author,
    this.authors = const [],
    this.schema,
    this.content,
  });

  final Archive epubArchive;
  final String? title;
  final String? author;
  final List<String> authors;
  final EpubSchema? schema;
  final EpubContentRef? content;

  @override
  int get hashCode {
    return title.hashCode ^
        author.hashCode ^
        authors.hashCode ^
        schema.hashCode ^
        content.hashCode;
  }

  @override
  bool operator ==(covariant EpubBookRef other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.title == title &&
        other.author == author &&
        listEquals(other.authors, authors) &&
        other.schema == schema &&
        other.content == content;
  }

  List<EpubChapterRef> getChapters() {
    return ChapterReader.getChapters(this);
  }

  Future<Image?> readCover() async {
    return await BookCoverReader.readBookCover(this);
  }
}
