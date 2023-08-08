import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/button.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/button_gesture_detector.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/button_icon.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/buttons/button_inkwell.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ButtonsExamplesWidget extends StatelessWidget {
  ButtonsExamplesWidget({Key? key}) : super(key: key);

  final List<String> _listText = [
    S.current.buttonExample1,
    S.current.buttonExample2,
    S.current.buttonExample3,
    S.current.buttonExample4,
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/buttons/button.dart',
    'lib/src/app/presentations/examples/buttons/button_icon.dart',
    'lib/src/app/presentations/examples/buttons/button_inkwell.dart',
    'lib/src/app/presentations/examples/buttons/button_gesture_detector.dart',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p4,
        const DocsTitleItemWidget(title: 'Default Button'),
        TekVSpace.p8,
        // ExampleBlockWidget(
        //   description: Text(_listText[0]),
        //   pathFileExample: _listPathFile[0],
        //   preview: const ButtonExampleWidget(),
        // ),
        // TekVSpace.p18,
        // const DocsTitleItemWidget(title: 'Button Icon'),
        // TekVSpace.p8,
        // ExampleBlockWidget(
        //   description: Text(_listText[1]),
        //   pathFileExample: _listPathFile[1],
        //   preview: const ButtonIconsExampleWidget(),
        // ),
        // TekVSpace.p18,
        // const DocsTitleItemWidget(title: 'Button Inkwell'),
        // TekVSpace.p8,
        // ExampleBlockWidget(
        //   description: Text(_listText[2]),
        //   pathFileExample: _listPathFile[2],
        //   preview: const InkwellButtonExampleWidget(),
        // ),
        // TekVSpace.p18,
        // const DocsTitleItemWidget(title: 'Button Gesture Detector'),
        // TekVSpace.p8,
        // ExampleBlockWidget(
        //   description: Text(_listText[3]),
        //   pathFileExample: _listPathFile[3],
        //   preview: const TextButtonExampleWidget(),
        // ),
      ],
    );
  }
}
