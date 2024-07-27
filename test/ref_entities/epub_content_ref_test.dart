import 'package:archive/archive.dart';
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';
import 'package:test/test.dart';

void main() {
  /* const reference = EpubContentRef();

  late EpubContentRef testContent;
  late EpubTextContentFileRef textContentFile;
  late EpubByteContentFileRef byteContentFile;

  setUp(() {
    final arch = Archive();
    final refBook = EpubBookRef(epubArchive: arch);

    testContent = const EpubContentRef();

    textContentFile = EpubTextContentFileRef(
      epubBookRef: refBook,
      contentMimeType: 'application/text',
      contentType: EpubContentType.other,
      fileName: 'orthros.txt',
    );

    byteContentFile = EpubByteContentFileRef(
      epubBookRef: refBook,
      contentMimeType: 'application/orthros',
      contentType: EpubContentType.other,
      fileName: 'orthros.bin',
    );
  }); */

  group('EpubContentRef', () {
    // TODO(Marc-R2): Removed redundant tests
  });
}
