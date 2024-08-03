import 'package:epub_io/epub_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_book.freezed.dart';

@freezed
class EpubBook with _$EpubBook {
  const factory EpubBook({
    String? title,
    @Default([]) List<EpubMetadataCreator> authors,
    EpubSchema? schema,
    EpubContent? content,
    Image? coverImage,
    @Default([]) List<EpubChapter<dynamic>> chapters,
  }) = _EpubBook;

  const EpubBook._();

  String get author => authors.map((e) => e.creator).join(', ');
}
