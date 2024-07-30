import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';

enum EpubContentType {
  xhtml11({'application/xhtml+xml', 'text/html'}, EpubFileContentType.xhtml),
  dtbook({'application/x-dtbook+xml'}, EpubFileContentType.other),
  dtbookNCX({'application/x-dtbncx+xml'}, EpubFileContentType.other),
  oeb1Document({'text/x-oeb1-document'}, EpubFileContentType.other),
  xml({'application/xml'}, EpubFileContentType.other),
  css({'text/css'}, EpubFileContentType.css),
  oeb1CSS({'text/x-oeb1-css'}, EpubFileContentType.css),
  imageGIF({'image/gif'}, EpubFileContentType.image),
  imageJPEG({'image/jpeg'}, EpubFileContentType.image),
  imagePNG({'image/png'}, EpubFileContentType.image),
  imageSVG({'image/svg+xml'}, EpubFileContentType.image),
  imageBMP({'image/bmp'}, EpubFileContentType.image),
  fontTrueType({'font/truetype'}, EpubFileContentType.font),
  fontOpenType(
    {'font/opentype', 'application/vnd.ms-opentype'},
    EpubFileContentType.font,
  ),
  other({}, EpubFileContentType.other);

  const EpubContentType(this.mimeTypes, this.refContentType);

  factory EpubContentType.fromMimeType(String contentMimeType) =>
      EpubContentType.values.firstWhere(
        (type) => type.mimeTypes.contains(contentMimeType),
        orElse: () => other,
      );

  final Set<String> mimeTypes;
  final EpubFileContentType refContentType;
}

enum EpubfileRefType<T extends EpubContentFileRef<dynamic>> {
  text<EpubTextContentFileRef>(),
  byte<EpubByteContentFileRef>();
}

enum EpubFileContentType {
  xhtml(EpubfileRefType.text),
  css(EpubfileRefType.text),
  image(EpubfileRefType.byte),
  font(EpubfileRefType.byte),
  other(EpubfileRefType.byte);

  const EpubFileContentType(this.refType);

  final EpubfileRefType refType;
}
