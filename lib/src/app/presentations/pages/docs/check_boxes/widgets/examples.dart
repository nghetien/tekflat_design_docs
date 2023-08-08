import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/check_boxes/check_boxes.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/check_boxes/check_boxes_form.dart';
import 'package:flutter/material.dart';

class CheckBoxesExamplesWidget extends StatelessWidget {
  CheckBoxesExamplesWidget({super.key});

  final List<String> _listText = ['Checkboxes', 'Form'];

  final _listPathFile = [
    'lib/src/app/presentations/examples/check_boxes/check_boxes.dart',
    'lib/src/app/presentations/examples/check_boxes/check_boxes_form.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          DocsTitleItemWidget(title: _listText[0]),
          TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[0]),
          //   pathFileExample: _listPathFile[0],
          //   preview: const CheckBoxesExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText[1]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[1]),
          //   pathFileExample: _listPathFile[1],
          //   preview: const CheckBoxesFormExampleWidget(),
          // ),
        ],
      );
}
