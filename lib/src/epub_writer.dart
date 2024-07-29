import 'dart:convert' as convert;

import 'package:archive/archive.dart';
import 'package:epub_io/src/entities/epub_book.dart';
import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:epub_io/src/writers/epub_container_writer.dart';
import 'package:epub_io/src/writers/epub_package_writer.dart';

class EpubWriter {
  // Creates a Zip Archive of an EpubBook
  static Archive _createArchive(EpubBook book) {
    final arch = Archive();

    // Add simple metadata
    arch.addFile(
      ArchiveFile.noCompress(
        'mimetype',
        20,
        convert.utf8.encode('application/epub+zip'),
      ),
    );

    // Generate the META-INF/container.xml file and add it to the Archive
    final container = EpubContainerWriter.write(book.schema!.epubContainer);
    final containerBytes = convert.utf8.encode(container);

    arch.addFile(
      ArchiveFile(
        'META-INF/container.xml',
        containerBytes.length,
        containerBytes,
        // ArchiveFile.DEFLATE,
      ),
    );

    // Add all content to the archive
    book.content!.allFiles.forEach((name, file) {
      List<int>? content;

      if (file is EpubByteContentFile) {
        content = file.content;
      } else if (file is EpubTextContentFile) {
        content = convert.utf8.encode(file.content!);
      }

      arch.addFile(
        ArchiveFile(
          ZipPathUtils.combine(
            book.schema!.epubContainer.contentDirectoryPath,
            name,
          )!,
          content!.length,
          content,
          // ArchiveFile.DEFLATE,
        ),
      );
    });

    // Generate the content.opf file and add it to the Archive
    final contentOpf = EpubPackageWriter.writeContent(book.schema!.package!);
    final contentOpfBytes = convert.utf8.encode(contentOpf);

    arch.addFile(
      ArchiveFile(
        ZipPathUtils.combine(
          book.schema!.epubContainer.contentDirectoryPath,
          'content.opf',
        )!,
        contentOpfBytes.length,
        contentOpfBytes,
        // ArchiveFile.DEFLATE,
      ),
    );

    return arch;
  }

  // Serializes the EpubBook into a byte array
  static List<int>? writeBook(EpubBook book) {
    final arch = _createArchive(book);

    return ZipEncoder().encode(arch);
  }
}
