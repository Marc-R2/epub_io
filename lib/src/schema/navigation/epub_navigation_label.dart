import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_label.freezed.dart';

@freezed
class EpubNavigationLabel with _$EpubNavigationLabel {
  const factory EpubNavigationLabel({
    required String text,
  }) = _EpubNavigationLabel;
}
