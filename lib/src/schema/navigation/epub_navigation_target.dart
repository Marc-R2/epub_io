import 'package:epub_io/src/schema/navigation/epub_metadata.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_target.freezed.dart';

@freezed
class EpubNavigationTarget with _$EpubNavigationTarget {
  const factory EpubNavigationTarget({
    required String id,
    String? classs,
    String? value,
    String? playOrder,
    @Default([]) List<EpubNavigationLabel> navigationLabels,
    EpubNavigationContent? content,
  }) = _EpubNavigationTarget;
}
