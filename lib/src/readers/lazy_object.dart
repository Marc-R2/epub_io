import 'dart:async';

/// A class that implements lazy loading for a value of type [T].
///
/// This class defers the computation or fetching of a value until it is
/// actually needed, which can be useful for optimizing performance and
/// managing resource-intensive operations.
class LazyObject<T> {
  /// Creates an instance of [LazyObject] with a loader function.
  ///
  /// The [loader] function is responsible for providing the value of type [T]
  /// when it is requested for the first time. This function should return a
  /// [Future] that resolves to the value of type [T].
  LazyObject(this.loader);

  T? _value;

  Future<T>? _future;

  /// The function that loads the value of type [T].
  ///
  /// This function is called the first time the value is requested,
  /// and it should return a [Future] that resolves to the value of type [T].
  final Future<T> Function() loader;

  /// Returns the value of type [T], loading it if necessary.
  ///
  /// If the value has already been computed and cached, it returns the cached
  /// value. If not, it invokes the [loader] function to fetch or compute the
  /// value, caches it, and then returns it.
  ///
  /// This method is asynchronous and will wait for the value to be loaded if
  /// it is not already available.
  Future<T> get value async {
    if (_value != null) return _value!;
    if (_future != null) return _future!;
    _future = loader();
    _value = await _future;
    _future = null;
    return _value as T;
  }

  /// Returns the cached value if it is available, otherwise returns `null`.
  ///
  /// This is a synchronous getter that does not trigger the loading of the
  /// value. It simply returns the value if it has been computed and cached,
  /// or `null` if it has not.
  T? get valueOrNull => _value;
}
