# epub_io

[![Dart](https://github.com/Marc-R2/epub_io/actions/workflows/dart.yml/badge.svg)](https://github.com/Marc-R2/epub_io/actions/workflows/dart.yml)
[![codecov](https://codecov.io/gh/Marc-R2/epub_io/branch/master/graph/badge.svg?token=AnWRyyjoQ1)](https://codecov.io/gh/Marc-R2/epub_io)
[![License](https://img.shields.io/github/license/Marc-R2/epub_io.svg)](https://img.shields.io/github/license/Marc-R2/epub_io.svg)
[![pub.dev](https://img.shields.io/pub/v/epub_io.svg)](https://pub.dev/packages/epub_io)

_This package [epub_io](https://github.com/Marc-R2/epub_io)
is a fork of [epub_plus](https://github.com/4akloon/epub_plus) by [@4akloon](https://github.com/4akloon)
which is a fork of [epubx](https://github.com/ScerIO/epubx.dart) by [@ScerIO](https://github.com/ScerIO)
which is a fork of [dart-epub](https://github.com/orthros/dart-epub) by [@orthros](https://github.com/orthros).
Thank you to all of them and all the [contributors](https://github.com/Marc-R2/epub_io/graphs/contributors) for their work._

> Epub Reader and Writer for Dart inspired by [this fantastic C# Epub Reader](https://github.com/versfx/EpubReader)
> -- @orthros

<!-- This does not rely on the ```dart:io``` package in any way, so it is avilable for both desktop and web-based implementations-->
In contrast to the other versions, this package relies on the `dart:io` package for (some) file operations.
This allows for dynamic file access, without the need to load the entire file into memory.
_But one goal is to provide dynamic classes that can be used in web-based implementations as well._

## Installing

Not yet published to pub.dev

You can use the package from the [_generated-files_](https://github.com/Marc-R2/epub_io/tree/generated-files) branch by adding the following to your pubspec.yaml

```yaml
dependencies:
  epub_io:
    git:
      url: https://github.com/Marc-R2/epub_io.git
      ref: generated-files
```

## Example
