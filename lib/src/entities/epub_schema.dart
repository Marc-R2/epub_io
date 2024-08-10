import 'package:epub_io/src/schema/container/epub_container.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation.dart';
import 'package:epub_io/src/schema/opf/epub_package.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_schema.freezed.dart';

@freezed
class EpubSchema with _$EpubSchema {
  const factory EpubSchema({
    required EpubContainer epubContainer,
    required EpubPackage package,
    required EpubNavigation navigation,
  }) = _EpubSchema;
}
