enum EpubVersion {
  epub2('2.0'),
  epub3('3.0');

  const EpubVersion(this.vString);

  factory EpubVersion.fromString(String? version) => switch (version) {
        '2.0' => EpubVersion.epub2,
        '3.0' => EpubVersion.epub3,
        _ => throw Exception('Unsupported EPUB version: $version.'),
      };

  final String vString;
}
