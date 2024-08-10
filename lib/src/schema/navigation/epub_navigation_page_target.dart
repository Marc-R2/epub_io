import 'package:epub_io/src/schema/navigation/epub_metadata.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_label.dart';
import 'package:epub_io/src/schema/navigation/epub_navigation_page_target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub_navigation_page_target.freezed.dart';

@freezed
class EpubNavigationPageTarget with _$EpubNavigationPageTarget {
  const factory EpubNavigationPageTarget({
    required EpubNavigationPageTargetType type,
    String? id,
    String? value,
    String? classs,
    String? playOrder,
    @Default([]) List<EpubNavigationLabel> navigationLabels,
    EpubNavigationContent? content,
  }) = _EpubNavigationPageTarget;
}
