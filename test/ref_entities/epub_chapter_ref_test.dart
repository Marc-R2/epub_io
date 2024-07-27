import 'package:archive/archive.dart';
import 'package:epub_io/epub_io.dart';
import 'package:epub_io/src/ref_entities/epub_text_content_file_ref.dart';
import 'package:test/test.dart';

void main() {
  final arch = Archive();
  final bookRef = EpubBookRef(epubArchive: arch);
  final contentFileRef = EpubTextContentFileRef(epubBookRef: bookRef);
  final reference = EpubChapterRef(
    epubTextContentFileRef: contentFileRef,
    anchor: 'anchor',
    contentFileName: 'orthros',
    subChapters: [],
    title: 'A New Look at Chapters',
  );

  late EpubBookRef bookRef2;
  late EpubChapterRef testChapterRef;

  setUp(() async {
    final arch2 = Archive();
    bookRef2 = EpubBookRef(epubArchive: arch2);
    final contentFileRef2 = EpubTextContentFileRef(epubBookRef: bookRef2);

    testChapterRef =
        reference.copyWith(epubTextContentFileRef: contentFileRef2);
  });

  group('EpubChapterRef', () {
    group('.equals', () {
      test('is true for equivalent objects', () async {
        expect(testChapterRef, equals(reference));
      });

      test('is false when Anchor changes', () async {
        testChapterRef = testChapterRef.copyWith(anchor: 'NotAnAnchor');
        expect(testChapterRef, isNot(reference));
      });

      test('is false when ContentFileName changes', () async {
        testChapterRef = testChapterRef.copyWith(contentFileName: 'NotOrthros');
        expect(testChapterRef, isNot(reference));
      });

      test('is false when SubChapters changes', () async {
        final subchapterContentFileRef =
            EpubTextContentFileRef(epubBookRef: bookRef2);
        final chapter = EpubChapterRef(
          epubTextContentFileRef: subchapterContentFileRef,
          title: 'A Brave new Epub',
          contentFileName: 'orthros.txt',
        );

        testChapterRef = testChapterRef.copyWith(subChapters: [chapter]);
        expect(testChapterRef, isNot(reference));
      });

      test('is false when Title changes', () async {
        testChapterRef = testChapterRef.copyWith(title: 'A Boring Old World');
        expect(testChapterRef, isNot(reference));
      });
    });

    group('.hashCode', () {
      test('is true for equivalent objects', () async {
        expect(testChapterRef.hashCode, equals(reference.hashCode));
      });

      test('is true for equivalent objects', () async {
        expect(testChapterRef.hashCode, equals(reference.hashCode));
      });

      test('is false when Anchor changes', () async {
        testChapterRef = testChapterRef.copyWith(anchor: 'NotAnAnchor');
        expect(testChapterRef.hashCode, isNot(reference.hashCode));
      });

      test('is false when ContentFileName changes', () async {
        testChapterRef = testChapterRef.copyWith(contentFileName: 'NotOrthros');
        expect(testChapterRef.hashCode, isNot(reference.hashCode));
      });

      test('is false when SubChapters changes', () async {
        final subchapterContentFileRef =
            EpubTextContentFileRef(epubBookRef: bookRef2);
        final chapter = EpubChapterRef(
          epubTextContentFileRef: subchapterContentFileRef,
          title: 'A Brave new Epub',
          contentFileName: 'orthros.txt',
        );
        testChapterRef = testChapterRef.copyWith(subChapters: [chapter]);
        expect(testChapterRef, isNot(reference));
      });

      test('is false when Title changes', () async {
        testChapterRef = testChapterRef.copyWith(title: 'A Boring Old World');
        expect(testChapterRef.hashCode, isNot(reference.hashCode));
      });
    });
  });
}

extension on EpubChapterRef {
  EpubChapterRef copyWith({
    EpubTextContentFileRef? epubTextContentFileRef,
    String? anchor,
    String? contentFileName,
    List<EpubChapterRef>? subChapters,
    String? title,
  }) {
    return EpubChapterRef(
      epubTextContentFileRef:
          epubTextContentFileRef ?? this.epubTextContentFileRef,
      anchor: anchor ?? this.anchor,
      contentFileName: contentFileName ?? this.contentFileName,
      subChapters: subChapters ?? this.subChapters,
      title: title ?? this.title,
    );
  }
}
