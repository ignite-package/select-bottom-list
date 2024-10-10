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

A Flutter widget offering a simple, customizable select list with a bottom sheet modal for user interactions.

## Demo

<table>
  <tr>
    <td>Demo</td>
    <td>Dismiss</td>
    <td>Display</td>
  </tr>
  <tr>
    <td>
      <img src="https://github.com/ignite-package/select-bottom-list/raw/main/assets/images/select_bottom_list_demo.gif" width="220">
    </td>
    <td>
      <img src="https://github.com/ignite-package/select-bottom-list/raw/main/assets/images/select_bottom_list_dismiss.png" width="220">
    </td>
    <td>
      <img src="https://github.com/ignite-package/select-bottom-list/raw/main/assets/images/select_bottom_list_display.png" width="220">
    </td>
  </tr>
 </table>

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
SelectBottomList(
    data: [],
    selectedId: "",
    selectedTitle: "",
    isDisable: false,
    onChange: (id, title) {

    },
),
```
