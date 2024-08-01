mixin XmlWrite {
  Map<String, dynamic> toJson();

  Map<String, String> toMap() {
    final map = toJson();
    final result = <String, String>{};
    for (final entry in map.entries) {
      if (entry.value is! String) continue;
      result[entry.key] = entry.value.toString();
    }
    return result;
  }
}
