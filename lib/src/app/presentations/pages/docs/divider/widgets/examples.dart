import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/divider.dart';
import 'package:flutter/material.dart';

class DividerExamplesWidget extends StatelessWidget {
  DividerExamplesWidget({super.key});

  final List<String> _listText = [
    'Basic Divider',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/divider.dart',
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
          //   preview: const DividerExampleWidget(),
          // ),
        ],
      );
}
