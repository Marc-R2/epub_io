import 'package:epub_io/src/schema/navigation/epub_navigation_doc_author.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_doc_title.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_head.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_list.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_map.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_page_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation.freezed.dart';

@freezed
class EpubNavigation with _$EpubNavigation {
  const factory EpubNavigation({
    required EpubNavigationDocTitle docTitle,
    required EpubNavigationMap navMap,
    EpubNavigationHead? head,
    @Default(<EpubNavigationDocAuthor>[])
    List<EpubNavigationDocAuthor> docAuthors,
    EpubNavigationPageList? pageList,
    @Default(<EpubNavigationList>[]) List<EpubNavigationList> navLists,
  }) = _EpubNavigation;
}
