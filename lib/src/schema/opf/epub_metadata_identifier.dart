class EpubMetadataIdentifier {
  const EpubMetadataIdentifier({
    this.id,
    this.scheme,
    this.identifier,
  });
  final String? id;
  final String? scheme;
  final String? identifier;

  @override
  int get hashCode => id.hashCode ^ scheme.hashCode ^ identifier.hashCode;

  @override
  bool operator ==(covariant EpubMetadataIdentifier other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.scheme == scheme &&
        other.identifier == identifier;
  }
}
