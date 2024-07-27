// ignore_for_file: unused_local_variable

import 'dart:io' as io;

import 'package:collection/collection.dart';
import 'package:epub_io/epub_io.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) async {
  //Get the epub into memory somehow
  const fileName = 'alicesAdventuresUnderGround.epub';
  final fullPath = path.join(
    io.Directory.current.path,
    'assets',
    fileName,
  );
  final targetFile = io.File(fullPath);
  final List<int> bytes = await targetFile.readAsBytes();

  // Opens a book and reads all of its content into the memory
  final epubBook = await EpubReader.readBook(bytes);

  // COMMON PROPERTIES

  // Book's title
  final title = epubBook.title;

  // Book's authors (comma separated list)
  final author = epubBook.author;

  // Book's authors (list of authors names)
  final authors = epubBook.authors;

  // Book's cover image (null if there is no cover)
  final coverImage = epubBook.coverImage;

  // CHAPTERS

  // Enumerating chapters
  for (final chapter in epubBook.chapters) {
    // Title of chapter
    final chapterTitle = chapter.title;

    // HTML content of current chapter
    final chapterHtmlContent = chapter.htmlContent;

    // Nested chapters
    final subChapters = chapter.subChapters;
  }

  // CONTENT

  // Book's content (HTML files, stlylesheets, images, fonts, etc.)
  final bookContent = epubBook.content;

  // IMAGES

  // All images in the book (file name is the key)
  final images = bookContent?.images;

  final firstImage =
      images?.values.firstOrNull; // Get the first image in the book

  // Content type (e.g. EpubContentType.IMAGE_JPEG, EpubContentType.IMAGE_PNG)
  final contentType = firstImage!.contentType!;

  // MIME type (e.g. "image/jpeg", "image/png")
  final mimeContentType = firstImage.contentMimeType!;

  // HTML & CSS

  // All XHTML files in the book (file name is the key)
  final htmlFiles = bookContent?.html;

  // All CSS files in the book (file name is the key)
  final cssFiles = bookContent?.css;

  // Entire HTML content of the book
  htmlFiles?.values.forEach((EpubTextContentFile htmlFile) {
    final htmlContent = htmlFile.content;
  });

  // All CSS content in the book
  cssFiles?.values.forEach((EpubTextContentFile cssFile) {
    final cssContent = cssFile.content!;
  });

  // OTHER CONTENT

  // All fonts in the book (file name is the key)
  final fonts = bookContent?.fonts;

  // All files in the book (including HTML, CSS, images, fonts, and other types of files)
  final allFiles = bookContent?.allFiles;

  // ACCESSING RAW SCHEMA INFORMATION

  // EPUB OPF data
  final package = epubBook.schema?.package;

  // Enumerating book's contributors
  package?.metadata?.contributors.forEach((contributor) {
    final contributorName = contributor.contributor!;
    final contributorRole = contributor.role!;
  });

  // EPUB NCX data
  final navigation = epubBook.schema!.navigation!;

  // Enumerating NCX metadata
  navigation.head?.metadata.forEach((meta) {
    final metadataItemName = meta.name!;
    final metadataItemContent = meta.content!;
  });

  // Write the Book
  final written = EpubWriter.writeBook(epubBook);

  if (written != null) {
    // Read the book into a new object!
    final newBook = await EpubReader.readBook(written);
  }
}
