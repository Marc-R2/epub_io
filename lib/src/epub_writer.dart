import 'dart:convert' as convert;

import 'package:archive/archive.dart';
import 'package:epub_io/src/entities/epub_book.dart';
import 'package:epub_io/src/entities/epub_byte_content_file.dart';
import 'package:epub_io/src/entities/epub_text_content_file.dart';
import 'package:epub_io/src/utils/zip_path_utils.dart';
import 'package:epub_io/src/writers/epub_package_writer.dart';

class EpubWriter {
  // TODO(Marc-R2): Investigate if this always is the container file
  static const _containerFile =
      '<?xml version="1.0"?><container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container"><rootfiles><rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/></rootfiles></container>';

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

    // Add Container file
    arch.addFile(
      ArchiveFile(
        'META-INF/container.xml',
        _containerFile.length,
        convert.utf8.encode(_containerFile),
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
          ZipPathUtils.combine(book.schema!.contentDirectoryPath, name)!,
          content!.length,
          content,
        ),
      );
    });

    // Generate the content.opf file and add it to the Archive
    final contentOpf = EpubPackageWriter.writeContent(book.schema!.package!);
    final contentOpfBytes = convert.utf8.encode(contentOpf);

    arch.addFile(
      ArchiveFile(
        ZipPathUtils.combine(book.schema!.contentDirectoryPath, 'content.opf')!,
        contentOpfBytes.length,
        contentOpfBytes,
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
