import 'dart:convert' as convert;

import 'package:archive/archive.dart';
import 'package:epub_io/src/entities/epub_book.dart';
import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:epub_io/src/writers/epub_container_writer.dart';
import 'package:epub_io/src/writers/epub_package_writer.dart';

/// The `EpubWriter` class is responsible for creating a ZIP archive
/// of an `EpubBook` object and serializing it into a byte array
/// that can be saved as an EPUB file.
class EpubWriter {
  /// Creates a ZIP archive containing the entire content of an `EpubBook`.
  ///
  /// This method assembles the necessary files and metadata,
  /// including the `mimetype`, `META-INF/container.xml`, content files,
  /// and `content.opf`, and adds them to a ZIP archive.
  ///
  /// - [book]: The `EpubBook` object
  ///   containing all the content and metadata of the EPUB.
  ///
  /// Returns an `Archive` object representing the EPUB file.
  static Archive _createArchive(EpubBook book) {
    final arch = Archive();

    // Add the EPUB mimetype as the first file in the archive (uncompressed)
    arch.addFile(
      ArchiveFile.noCompress(
        'mimetype',
        20,
        convert.utf8.encode('application/epub+zip'),
      ),
    );

    // Generate the META-INF/container.xml file and add it to the archive
    final container = EpubContainerWriter.write(book.schema.epubContainer);
    final containerBytes = convert.utf8.encode(container);

    arch.addFile(
      ArchiveFile(
        'META-INF/container.xml',
        containerBytes.length,
        containerBytes,
      ),
    );

    // Add all content files (byte and text) to the archive
    book.content.allFiles.forEach((name, file) {
      List<int>? content;

      if (file is EpubByteContentFile) {
        content = file.content;
      } else if (file is EpubTextContentFile) {
        content = convert.utf8.encode(file.content);
      }

      arch.addFile(
        ArchiveFile(
          ZipPathUtils.combine(
            book.schema.epubContainer.contentDirectoryPath,
            name,
          )!,
          content!.length,
          content,
        ),
      );
    });

    // Generate the content.opf file and add it to the archive
    final contentOpf = EpubPackageWriter.writeContent(book.schema.package);
    final contentOpfBytes = convert.utf8.encode(contentOpf);

    arch.addFile(
      ArchiveFile(
        book.schema.epubContainer.rootFilePath,
        contentOpfBytes.length,
        contentOpfBytes,
      ),
    );

    return arch;
  }

  /// Serializes the `EpubBook` object into a byte array
  /// that represents the entire EPUB file.
  ///
  /// This method creates the archive by calling `_createArchive()`
  /// and then encodes it using a ZIP encoder to produce the final byte array.
  ///
  /// - [book]: The `EpubBook` object containing
  ///   all the content and metadata of the EPUB.
  ///
  /// Returns a `List<int>` representing the EPUB file as a byte array.
  static List<int>? writeBook(EpubBook book) {
    final arch = _createArchive(book);

    return ZipEncoder().encode(arch);
  }
}
