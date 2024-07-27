class EpubMetadataCreator {
  const EpubMetadataCreator({
    this.creator,
    this.fileAs,
    this.role,
  });
  final String? creator;
  final String? fileAs;
  final String? role;

  @override
  int get hashCode => creator.hashCode ^ fileAs.hashCode ^ role.hashCode;

  @override
  bool operator ==(covariant EpubMetadataCreator other) {
    if (identical(this, other)) return true;

    return other.creator == creator &&
        other.fileAs == fileAs &&
        other.role == role;
  }
}
