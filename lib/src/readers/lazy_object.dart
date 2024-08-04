class LazyObject<T> {
  LazyObject(this._loader);

  T? _value;

  Future<T>? _future;

  final Future<T> Function() _loader;

  Future<T> get value async {
    if (_value != null) return _value!;
    if (_future != null) return _future!;
    _future = _loader();
    _value = await _future;
    _future = null;
    return _value as T;
  }

  T? get valueOrNull => _value;
}
