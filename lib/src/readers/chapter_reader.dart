import 'package:epub_io/src/ref_entities/epub_book_ref.dart';
import 'package:epub_io/src/ref_entities/epub_chapter_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_point.dart';

class ChapterReader {
  static List<EpubChapterRef> getChapters(EpubBookRef bookRef) {
    if (bookRef.schema!.navigation == null) {
      return <EpubChapterRef>[];
    }
    return getChaptersImpl(bookRef, bookRef.schema!.navigation!.navMap!.points);
  }

  static List<EpubChapterRef> getChaptersImpl(
    EpubBookRef bookRef,
    List<EpubNavigationPoint> navigationPoints,
  ) {
    final result = <EpubChapterRef>[];
    // navigationPoints.forEach((EpubNavigationPoint navigationPoint) {
    for (final navigationPoint in navigationPoints) {
      String? contentFileName;
      String? anchor;
      if (navigationPoint.content?.source == null) continue;
      final contentSourceAnchorCharIndex =
          navigationPoint.content!.source!.indexOf('#');
      if (contentSourceAnchorCharIndex == -1) {
        contentFileName = navigationPoint.content!.source;
        anchor = null;
      } else {
        contentFileName = navigationPoint.content!.source!
            .substring(0, contentSourceAnchorCharIndex);
        anchor = navigationPoint.content!.source!
            .substring(contentSourceAnchorCharIndex + 1);
      }
      // contentFileName = Uri.decodeFull(contentFileName!);
      EpubContentFileRef<dynamic>? htmlContentFileRef;
      if (!bookRef.content!.allFiles.containsKey(contentFileName)) {
        throw Exception(
          'Incorrect EPUB manifest: item with href = "$contentFileName" is missing.',
        );
      }

      htmlContentFileRef = bookRef.content!.allFiles[contentFileName];
      final chapterRef = EpubChapterRef(
        epubContentFileRef: htmlContentFileRef,
        title: navigationPoint.navigationLabels.first.text,
        contentFileName: contentFileName,
        anchor: anchor,
        subChapters:
            getChaptersImpl(bookRef, navigationPoint.childNavigationPoints),
      );
      result.add(chapterRef);
    }

    return result;
  }
}
