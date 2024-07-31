import 'dart:math';

class ObjectCompare<T> {
  ObjectCompare(this.obj1, this.obj2, {this.path = const []});

  final List<String> path;
  final T obj1;
  final T obj2;

  static const red = '\x1B[31m';
  static const yellow = '\x1B[33m';
  static const green = '\x1B[32m';
  static const reset = '\x1B[0m';

  (R, R, List<String>) _compare<R>(
    String key,
    R Function(T) f, {
    bool showObj = false,
    bool allowToString = true,
  }) {
    final b1 = f(obj1);
    final b2 = f(obj2);

    final newPath = [...path, key];
    final keyPath = newPath.join('.');

    var h = (b1.hashCode, b2.hashCode);

    var useToString = '';

    if (h.$1 != h.$2 && allowToString) {
      if (b1.toString() == b2.toString()) {
        h = (b1.toString().hashCode, b2.toString().hashCode);
        useToString = ' $yellow(toString)$reset';
      } else {
        useToString = ' $red(tried toString)$reset';
      }
    }

    final show = (showObj && h.$1 != h.$2) ? ' $b1 $b2' : '';

    final color = h.$1 == h.$2 ? green : red;

    final indent = '-' * (path.length + 1);

    print('$indent $color$keyPath: ${h.$1} ${h.$2}$useToString$show$reset');

    return (b1, b2, newPath);
  }

  ObjectCompare<R> line<R>(
    String key,
    R Function(T) f, {
    bool showObj = false,
    bool allowToString = true,
  }) {
    final (b1, b2, newPath) = _compare(
      key,
      f,
      showObj: showObj,
      allowToString: allowToString,
    );
    return ObjectCompare(b1, b2, path: newPath);
  }

  ObjectListCompare<I> lines<I>(
    String key,
    List<I>? Function(T) f, {
    bool showObj = false,
    bool allowToString = true,
  }) {
    final (b1, b2, newPath) = _compare(
      key,
      f,
      showObj: showObj,
      allowToString: allowToString,
    );
    return ObjectListCompare<I>(b1, b2, path: newPath);
  }

  ObjectMapCompare<K, V> map<K, V>(
    String key,
    Map<K, V>? Function(T) f, {
    bool showObj = false,
    bool allowToString = true,
  }) {
    final (b1, b2, newPath) = _compare(
      key,
      f,
      showObj: showObj,
      allowToString: allowToString,
    );
    return ObjectMapCompare<K, V>(b1, b2, path: newPath);
  }
}

class ObjectListCompare<T> extends ObjectCompare<List<T>?> {
  ObjectListCompare(super.obj1, super.obj2, {super.path});

  int get length => max(obj1?.length ?? 0, obj2?.length ?? 0);

  void forEach([void Function(ObjectCompare<T?>)? f]) {
    for (var i = 0; i < length; i++) {
      final childCompare = line('$i', (b) => b?.elementAtOrNull(i));
      f?.call(childCompare);
    }
  }
}

class ObjectMapCompare<K, V> extends ObjectCompare<Map<K, V>?> {
  ObjectMapCompare(super.obj1, super.obj2, {super.path});

  int get length => max(obj1?.length ?? 0, obj2?.length ?? 0);

  Set<K> get keys => {...?obj1?.keys, ...?obj2?.keys};

  void forEach([void Function(ObjectCompare<V?>)? f]) {
    for (final key in keys) {
      final childCompare = line('[$key]', (b) => b?[key]);
      f?.call(childCompare);
    }
  }
}
