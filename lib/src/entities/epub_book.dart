import 'package:epub_io/src/entities/epub_chapter.dart';
import 'package:epub_io/src/entities/epub_content.dart';
import 'package:epub_io/src/entities/epub_schema.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart';

part 'epub_book.freezed.dart';

@freezed
class EpubBook with _$EpubBook {
  const factory EpubBook({
    String? title,
    String? author,
    @Default(<String>[]) List<String?> authors,
    EpubSchema? schema,
    EpubContent? content,
    Image? coverImage,
    @Default([]) List<EpubChapter<dynamic>> chapters,
  }) = _EpubBook;
}
