import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/readers/lazy_object.dart';
import 'package:epub_io/src/readers/schema_reader.dart';
import 'package:epub_io/src/ref_entities/epub_byte_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_file_ref.dart';
import 'package:epub_io/src/ref_entities/epub_content_ref.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';

mixin ContentRefReader implements EpubArchiveReader, SchemaReader {
  late final _epubContentRef = LazyObject(parseContentMap);

  Future<EpubContentRef> get contentRef async => _epubContentRef.value;

  Future<T> getFileRef<T>(EpubManifestItem item) async =>
      getFileRefSync(item, await schema);

  T getFileRefSync<T>(EpubManifestItem item, EpubSchema schema) {
    final fileName = item.href ?? '';
    final contentMimeType = item.mediaType!;
    final contentType = EpubContentType.fromMimeType(contentMimeType);

    final constructor = switch (contentType.refContentType.refType) {
      EpubfileRefType.text => EpubTextContentFileRef.new,
      EpubfileRefType.byte => EpubByteContentFileRef.new,
    };
    return constructor(
      epubArchive: epubArchive,
      schema: schema,
      fileName: fileName,
      contentMimeType: contentMimeType,
      contentType: contentType,
    ) as T;
  }

  Future<EpubContentRef> parseContentMap() async {
    final html = <String, EpubTextContentFileRef>{};
    final css = <String, EpubTextContentFileRef>{};
    final images = <String, EpubByteContentFileRef>{};
    final fonts = <String, EpubByteContentFileRef>{};
    final allFiles = <String, EpubContentFileRef<dynamic>>{};

    final schema = await this.schema;

    void processItem(EpubManifestItem item) {
      final fileName = item.href ?? '';
      final contentMimeType = item.mediaType!;
      final contentType = EpubContentType.fromMimeType(contentMimeType);

      switch (contentType.refContentType) {
        case EpubFileContentType.xhtml:
          html[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.css:
          css[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.image:
          images[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.font:
          fonts[fileName] = getFileRefSync(item, schema);
        case EpubFileContentType.other:
        // pass
      }
      allFiles[fileName] = getFileRefSync(item, schema);
    }

    for (final manifestItem in schema.package!.manifest!.items) {
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

mixin ContentReader implements ContentRefReader {
  late final _epubContent = LazyObject(readContent);

  Future<EpubContent> get content async => _epubContent.value;

  Future<EpubContent> readContent() async {
    final contentRef = await this.contentRef;

    final html = await readContentFiles(contentRef.html);
    final css = await readContentFiles(contentRef.css);
    final images = await readContentFiles(contentRef.images);
    final fonts = await readContentFiles(contentRef.fonts);
    final allFiles = <String, EpubContentFile<dynamic>>{};

    html.forEach((key, value) => allFiles[key] = value);
    css.forEach((key, value) => allFiles[key] = value);
    images.forEach((key, value) => allFiles[key] = value);
    fonts.forEach((key, value) => allFiles[key] = value);

    await Future.forEach(
      contentRef.allFiles.keys.where((key) => !allFiles.containsKey(key)),
      (key) async => allFiles[key] = await contentRef.allFiles[key]!.read(),
    );

    return EpubContent(
      // TODO(Marc-R2): find a solution to avoid TypeCasts
      html: html.cast<String, EpubTextContentFile>(),
      css: css.cast<String, EpubTextContentFile>(),
      images: images.cast<String, EpubByteContentFile>(),
      fonts: fonts.cast<String, EpubByteContentFile>(),
      allFiles: allFiles,
    );
  }

  Future<Map<String, EpubContentFile<T>>> readContentFiles<T>(
    Map<String, EpubContentFileRef<T>> fileRefs,
  ) async {
    final res = <String, EpubContentFile<T>>{};
    await Future.forEach(
      fileRefs.entries,
      (entry) async => res[entry.key] = await entry.value.read(),
    );
    return res;
  }
}
