import 'package:flutter/material.dart';
import 'package:select_bottom_list/src/select_item.dart';

class SelectListModal extends StatelessWidget {
  const SelectListModal({
    super.key,
    required this.data,
    required this.selectedId,
    required this.onChange,
    this.titleTextStyle,
  });

  final List<SelectItem> data;
  final String selectedId;
  final Function(String id, String title) onChange;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: size.height * 0.6),
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: ((context, index) {
              final item = data[index];
              final colorSelected = selectedId == item.id
                  ? theme.colorScheme.primary
                  : theme.colorScheme.onSurface;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (index == 0) const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      onChange(item.id, item.title);
                      Navigator.pop(context);
                    },
                    splashColor: Colors.grey.withOpacity(0.2),
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(item.title,
                          style: titleTextStyle ??
                              TextStyle(
                                fontSize: 16,
                                color: colorSelected,
                                fontWeight: selectedId == item.id
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                              )),
                    ),
                  ),
                  if (index != data.length - 1)
                    Divider(
                      thickness: 1,
                      color: theme.dividerColor,
                    )
                ],
              );
            })),
      ),
    );
  }
}
