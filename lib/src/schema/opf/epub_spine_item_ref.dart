class EpubSpineItemRef {
  const EpubSpineItemRef({
    required this.isLinear,
    this.idRef,
  });
  final String? idRef;
  final bool isLinear;

  @override
  int get hashCode => idRef.hashCode ^ isLinear.hashCode;

  @override
  bool operator ==(covariant EpubSpineItemRef other) {
    if (identical(this, other)) return true;

    return other.idRef == idRef && other.isLinear == isLinear;
  }

  @override
  String toString() {
    return 'IdRef: $idRef';
  }
}
