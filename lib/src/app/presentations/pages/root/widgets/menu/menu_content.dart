import 'package:flutter/material.dart';

import 'menu_item.dart';
import 'menu_item_model.dart';

class MenuContent extends StatefulWidget {
  const MenuContent({
    Key? key,
    required this.menuIsExpanded,
    required this.listMenuItems,
  }) : super(key: key);

  final bool menuIsExpanded;
  final List<MenuItemModel> listMenuItems;

  @override
  State<MenuContent> createState() => _MenuContentState();
}

class _MenuContentState extends State<MenuContent> {
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: widget.listMenuItems.length,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (_, index) => AppMenuItem(
          key: ObjectKey(widget.listMenuItems[index]),
          menuItemModel: widget.listMenuItems[index],
          menuIsExpanded: widget.menuIsExpanded,
        ),
      );
}
