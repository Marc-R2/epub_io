enum EpubNavigationPageTargetType {
  undefined('UNDEFINED'),
  front('FRONT'),
  normal('NORMAL'),
  special('SPECIAL');

  final String value;

  const EpubNavigationPageTargetType(this.value);

  factory EpubNavigationPageTargetType.fromValue(String value) {
    return EpubNavigationPageTargetType.values.firstWhere(
      (e) => e.value.toLowerCase() == value.toLowerCase(),
      orElse: () => throw Exception('Unknown PageTargetType: $value'),
    );
  }
}
