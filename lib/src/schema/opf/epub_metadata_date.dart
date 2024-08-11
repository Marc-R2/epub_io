import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_metadata_date.freezed.dart';

@freezed
class EpubMetadataDate with _$EpubMetadataDate {
  const factory EpubMetadataDate({
    required String date,
    String? event,
  }) = _EpubMetadataDate;
}
