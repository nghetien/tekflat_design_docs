import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/inputs/basic_input.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/inputs/input_date_time.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/inputs/input_dropdown.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/inputs/input_dropdown_select.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/inputs/input_password.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/inputs/input_type_ahead.dart';
import 'package:flutter/material.dart';

class InputsExamplesWidget extends StatelessWidget {
  InputsExamplesWidget({super.key});

  final List<String> _listText = [
    'Basic Input',
    'Basic Input DateTime',
    'Basic Input Password',
    'Basic Input Dropdown',
    'Basic Input Dropdown Select',
    'Basic Input Type Ahead',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/inputs/basic_input.dart',
    'lib/src/app/presentations/examples/inputs/input_date_time.dart',
    'lib/src/app/presentations/examples/inputs/input_password.dart',
    'lib/src/app/presentations/examples/inputs/input_dropdown.dart',
    'lib/src/app/presentations/examples/inputs/input_dropdown_select.dart',
    'lib/src/app/presentations/examples/inputs/input_type_ahead.dart',
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
          //   preview: const TekInputExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText[1]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[1]),
          //   pathFileExample: _listPathFile[1],
          //   preview: const InputDateTimeExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText[2]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[2]),
          //   pathFileExample: _listPathFile[2],
          //   preview: const InputPasswordExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText[3]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[3]),
          //   pathFileExample: _listPathFile[3],
          //   preview: const InputDropdownExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText[4]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[4]),
          //   pathFileExample: _listPathFile[4],
          //   preview: const InputDropdownSelectExampleWidget(),
          // ),
          // TekVSpace.p18,
          // DocsTitleItemWidget(title: _listText[5]),
          // TekVSpace.p8,
          // ExampleBlockWidget(
          //   description: Text(_listText[5]),
          //   pathFileExample: _listPathFile[5],
          //   preview: const InputTypeAheadExampleWidget(),
          // ),
        ],
      );
}
