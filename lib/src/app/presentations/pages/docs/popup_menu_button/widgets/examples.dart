import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/popup_menu_button/menu_anchor.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/popup_menu_button/popup_menu_button.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class PopupMenuButtonExamplesWidget extends StatelessWidget {
  PopupMenuButtonExamplesWidget({super.key});

  List<String> _listText() => [
    'Menu Anchor (${S.current.recommendToUse})',
    'Basic Popup Menu Button',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/popup_menu_button/menu_anchor.dart',
    'lib/src/app/presentations/examples/popup_menu_button/popup_menu_button.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          DocsTitleItemWidget(title: _listText()[0]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText()[0]),
          //   pathFileExample: _listPathFile[0],
          //   preview: const MenuAnchorExampleWidget(),
          // ),
          TekVSpace.p18,
          DocsTitleItemWidget(title: _listText()[1]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText()[1]),
          //   pathFileExample: _listPathFile[1],
          //   preview: const PopupMenuButtonExampleWidget(),
          // ),
        ],
      );
}
