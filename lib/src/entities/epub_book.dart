import 'package:epub_io/epub_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_book.freezed.dart';

/// Represents an EPUB book with its associated metadata,
/// schema, content, cover image, and chapters.
@freezed
class EpubBook with _$EpubBook {
  /// Creates an instance of [EpubBook].
  ///
  /// - **[title]**: The title of the EPUB book.
  /// - **[authors]**: A list of [EpubMetadataCreator] representing the
  ///   authors of the book.
  /// - **[schema]**: The [EpubSchema] containing metadata
  ///   and structural information of the EPUB file.
  /// - **[content]**: The [EpubContent] including text, images,
  ///   and other resources.
  /// - **[coverImage]**: The cover image of the book as an [Image].
  /// - **[chapters]**: A list of [EpubChapter] representing the
  ///   chapters of the book.
  const factory EpubBook({
    /// The [EpubSchema] containing metadata and structural information.
    required EpubSchema schema,

    /// The [EpubContent] including text, images, and other resources.
    required EpubContent content,

    /// The title of the EPUB book. Optional.
    String? title,

    /// A list of [EpubMetadataCreator] representing the authors of the book.
    @Default([]) List<EpubMetadataCreator> authors,

    /// The cover image of the book as an [Image].
    Image? coverImage,

    /// A list of [EpubChapter] representing the chapters of the book.
    @Default([]) List<EpubChapter<dynamic>> chapters,
  }) = _EpubBook;

  const EpubBook._();

  /// Returns a comma-separated list of author names.
  ///
  /// This getter concatenates the `creator` field from
  /// each [EpubMetadataCreator] in the [authors] list.
  String get author => authors.map((e) => e.creator).join(', ');
}
