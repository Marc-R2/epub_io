class EpubNavigationHeadMeta {
  const EpubNavigationHeadMeta({
    this.name,
    this.content,
    this.scheme,
  });
  final String? name;
  final String? content;
  final String? scheme;

  @override
  int get hashCode => name.hashCode ^ content.hashCode ^ scheme.hashCode;

  @override
  bool operator ==(covariant EpubNavigationHeadMeta other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.content == content &&
        other.scheme == scheme;
  }
}
