import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_doc_author.freezed.dart';

@freezed
class EpubNavigationDocAuthor with _$EpubNavigationDocAuthor {
  const factory EpubNavigationDocAuthor({
    @Default(<String>[]) List<String> authors,
  }) = _EpubNavigationDocAuthor;
}
