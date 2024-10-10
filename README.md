<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A simple fully customisable select input list.

## Features

- Select input list widget.
- Dynamic modal height.
- Simple select input list with bottom sheet.

## Getting started

In the pubspec.yaml of your flutter project, add the following dependency:

```yaml
dependencies:
  select_bottom_list: any
```

Import it:

```yaml
import 'package:select_bottom_list/select_bottom_list.dart';
```

## Usage

Basic select bottom list

```dart
SelectBottomMenu(
    data: [],
    selectedId: "",
    selectedTitle: "",
    isDisable: false,
    onChange: (id, title) {

    },
),
```
