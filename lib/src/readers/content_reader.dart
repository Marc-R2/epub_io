import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';

class ContentReader {
  static EpubContentRef parseContentMap(EpubBookRef bookRef) {
    final html = <String, EpubTextContentFileRef>{};
    final css = <String, EpubTextContentFileRef>{};
    final images = <String, EpubByteContentFileRef>{};
    final fonts = <String, EpubByteContentFileRef>{};
    final allFiles = <String, EpubContentFileRef<dynamic>>{};

    void processItem(EpubManifestItem item) {
      final fileName = item.href ?? '';
      final contentMimeType = item.mediaType!;
      final contentType = EpubContentType.fromMimeType(contentMimeType);

      T getFileRef<T>(EpubfileRefType refType) {
        final constructor = switch (refType) {
          EpubfileRefType.text => EpubTextContentFileRef.new,
          EpubfileRefType.byte => EpubByteContentFileRef.new,
        };
        return constructor(
          epubBookRef: bookRef,
          fileName: fileName,
          contentMimeType: contentMimeType,
          contentType: contentType,
        ) as T;
      }

      switch (contentType.refContentType) {
        case EpubFileContentType.xhtml:
          html[fileName] = getFileRef(contentType.refContentType.refType);
        case EpubFileContentType.css:
          css[fileName] = getFileRef(contentType.refContentType.refType);
        case EpubFileContentType.image:
          images[fileName] = getFileRef(contentType.refContentType.refType);
        case EpubFileContentType.font:
          fonts[fileName] = getFileRef(contentType.refContentType.refType);
        case EpubFileContentType.other:
        // pass
      }
      allFiles[fileName] = getFileRef(contentType.refContentType.refType);
    }

    for (final manifestItem in bookRef.schema!.package!.manifest!.items) {
      processItem(manifestItem);
    }

    return EpubContentRef(
      html: html,
      css: css,
      images: images,
      fonts: fonts,
      allFiles: allFiles,
    );
  }
}
