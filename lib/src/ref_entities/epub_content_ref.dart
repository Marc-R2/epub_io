import 'package:collection/collection.dart';

import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';

class EpubContentRef {
  const EpubContentRef({
    this.html = const <String, EpubTextContentFileRef>{},
    this.css = const <String, EpubTextContentFileRef>{},
    this.images = const <String, EpubByteContentFileRef>{},
    this.fonts = const <String, EpubByteContentFileRef>{},
    this.allFiles = const <String, EpubContentFileRef>{},
  });
  final Map<String, EpubTextContentFileRef> html;
  final Map<String, EpubTextContentFileRef> css;
  final Map<String, EpubByteContentFileRef> images;
  final Map<String, EpubByteContentFileRef> fonts;
  final Map<String, EpubContentFileRef> allFiles;

  @override
  int get hashCode {
    final hash = const DeepCollectionEquality().hash;
    return hash(html) ^ hash(css) ^ hash(images) ^ hash(fonts) ^ hash(allFiles);
  }

  @override
  bool operator ==(covariant EpubContentRef other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return mapEquals(other.html, html) &&
        mapEquals(other.css, css) &&
        mapEquals(other.images, images) &&
        mapEquals(other.fonts, fonts) &&
        mapEquals(other.allFiles, allFiles);
  }
}
