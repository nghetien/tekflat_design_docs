import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class MenuAnchorDemoModel {
  final String text;
  final IconData icon;

  const MenuAnchorDemoModel({
    required this.text,
    required this.icon,
  });
}

const List<MenuAnchorDemoModel> _children = [
  MenuAnchorDemoModel(
    text: 'Item 1',
    icon: Icons.ac_unit,
  ),
  MenuAnchorDemoModel(
    text: 'Item 2',
    icon: Icons.access_alarm,
  ),
];

class MenuAnchorExampleWidget extends StatefulWidget {
  const MenuAnchorExampleWidget({super.key});

  @override
  State<MenuAnchorExampleWidget> createState() => _MenuAnchorExampleWidgetState();
}

class _MenuAnchorExampleWidgetState extends State<MenuAnchorExampleWidget> {
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      crossAxisUnconstrained: false,
      controller: _menuController,
      alignmentOffset: const Offset(0, 10),
      menuChildren: _children
          .map(
            (element) => Padding(
              padding: EdgeInsets.all(TekSpacings().mainSpacing),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(element.icon),
                  TekHSpace.mainSpace,
                  Text(element.text),
                ],
              ),
            ),
          )
          .toList(),
      builder: (context, controller, child) {
        return TekButton(
          type: TekButtonType.primary,
          size: TekButtonSize.large,
          text: 'Open Menu',
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          child: child,
        );
      },
    );
  }
}
