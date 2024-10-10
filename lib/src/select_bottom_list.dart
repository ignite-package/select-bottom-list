/*
 * Created by Quang Duong on 10 Oct 2024.
 * Edits made on original source code by Flutter.
 * Copyright 2024 The Flutter Authors. All rights reserved.
*/

import 'package:flutter/material.dart';
import 'package:select_bottom_list/src/select_item.dart';

import 'select_list_modal.dart';

/// [SelectBottomList]
///

class SelectBottomList extends StatelessWidget {
  const SelectBottomList({
    required this.data,
    required this.selectedId,
    required this.selectedTitle,
    required this.onChange,
    required this.isDisable,
    this.selectedTitleStyle = const TextStyle(fontSize: 14),
    this.titleTextStyle,
    super.key,
  });

  /// [data] list of item
  final List<SelectItem> data;

  /// [selectedId] id of selected item
  final String selectedId;

  /// [selectedTitle] title of selected item
  final String selectedTitle;

  /// [isDisable] disable input select, default false
  final bool isDisable;

  /// [onChange] function return id, title of selected item
  final Function(String id, String title) onChange;

  /// [selectedTitleStyle] style of selected title
  final TextStyle? selectedTitleStyle;

  /// [titleTextStyle] style of title
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Opacity(
      opacity: isDisable ? 0.5 : 1,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        splashColor: theme.splashColor,
        onTap: () {
          if (!isDisable) {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                builder: (context) {
                  return SelectListModal(
                    data: data,
                    selectedId: selectedId,
                    titleTextStyle: titleTextStyle,
                    onChange: (id, title) {
                      onChange(id, title);
                    },
                  );
                }).whenComplete(() {});
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: Colors.black45),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  selectedTitle,
                  style: selectedTitleStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
      ),
    );
  }
}
