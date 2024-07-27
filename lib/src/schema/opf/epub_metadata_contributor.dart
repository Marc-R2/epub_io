class EpubMetadataContributor {
  const EpubMetadataContributor({
    this.contributor,
    this.fileAs,
    this.role,
  });
  final String? contributor;
  final String? fileAs;
  final String? role;

  @override
  int get hashCode => contributor.hashCode ^ fileAs.hashCode ^ role.hashCode;

  @override
  bool operator ==(covariant EpubMetadataContributor other) {
    if (identical(this, other)) return true;

    return other.contributor == contributor &&
        other.fileAs == fileAs &&
        other.role == role;
  }
}
