import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class PopupMenuButtonDemoModel {
  final String text;
  final IconData icon;

  const PopupMenuButtonDemoModel({
    required this.text,
    required this.icon,
  });
}

const List<PopupMenuButtonDemoModel> _children = [
  PopupMenuButtonDemoModel(
    text: 'Item 1',
    icon: Icons.ac_unit,
  ),
  PopupMenuButtonDemoModel(
    text: 'Item 2',
    icon: Icons.access_alarm,
  ),
];

class PopupMenuButtonExampleWidget extends StatelessWidget {
  const PopupMenuButtonExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPopupMenuButton(
      tooltip: '',
      itemBuilder: (context) {
        return _children.map(
          (PopupMenuButtonDemoModel element) {
            return PopupMenuItem(
              value: element,
              padding: EdgeInsets.zero,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TekHSpace.p8,
                  Icon(element.icon),
                  TekHSpace.p8,
                  Text(element.text),
                ],
              ),
            );
          },
        ).toList();
      },
      offset: const Offset(100, 50),
      child: Container(
        padding: EdgeInsets.all(TekSpacings().p8),
        decoration: BoxDecoration(
          border: Border.all(
            color: TekColors().primary,
            width: 1,
          ),
          borderRadius: TekCorners.cornerBorder8,
        ),
        child: TekTypography(
          text: 'Click Me',
          type: TekTypographyType.level4,
          color: TekColors().primary,
        ),
      ),
    );
  }
}
