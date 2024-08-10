import 'package:epub_io/src/ref_entities/epub_book_ref.dart';
import 'package:epub_io/src/ref_entities/epub_chapter_ref.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_point.dart';

/// The [ChapterReader] class provides functionality
/// to extract chapters from an EPUB book.
class ChapterReader {
  /// Retrieves a list of chapters from the given [EpubBookRef].
  ///
  /// - **[bookRef]**: A reference to the EPUB book ([EpubBookRef]).
  ///
  /// Returns a list of [EpubChapterRef] objects representing the chapters.
  /// If the navigation information is missing, an empty list is returned.
  static List<EpubChapterRef> getChapters(EpubBookRef bookRef) =>
      getChaptersImpl(bookRef, bookRef.schema.navigation.navMap.points);

  /// Recursively retrieves chapters
  /// from the given list of [EpubNavigationPoint].
  ///
  /// - **[bookRef]**: A reference to the EPUB book ([EpubBookRef]).
  /// - **[navigationPoints]**: A list of navigation points
  ///   ([EpubNavigationPoint]) from which chapters are extracted.
  ///
  /// Returns a list of [EpubChapterRef] objects representing the chapters.
  static List<EpubChapterRef> getChaptersImpl(
    EpubBookRef bookRef,
    List<EpubNavigationPoint> navigationPoints,
  ) {
    final result = <EpubChapterRef>[];

    for (final navigationPoint in navigationPoints) {
      String? contentFileName;
      String? anchor;
      if (navigationPoint.content.source == null) continue;
      final contentSourceAnchorCharIndex =
          navigationPoint.content.source!.indexOf('#');
      if (contentSourceAnchorCharIndex == -1) {
        contentFileName = navigationPoint.content.source;
        anchor = null;
      } else {
        contentFileName = navigationPoint.content.source!
            .substring(0, contentSourceAnchorCharIndex);
        anchor = navigationPoint.content.source!
            .substring(contentSourceAnchorCharIndex + 1);
      }

      // Ensure the content file exists in the book
      if (!bookRef.content!.allFiles.containsKey(contentFileName)) {
        throw Exception(
          'Incorrect EPUB manifest: item with href = "$contentFileName" is missing.',
        );
      }

      final chapterRef = EpubChapterRef(
        epubContentFileRef: bookRef.content!.allFiles[contentFileName]!,
        title: navigationPoint.navigationLabels.first.text,
        contentFileName: contentFileName!,
        anchor: anchor,
        subChapters:
            getChaptersImpl(bookRef, navigationPoint.childNavigationPoints),
      );
      result.add(chapterRef);
    }

    return result;
  }
}
