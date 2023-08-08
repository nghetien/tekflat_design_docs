import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/line_dash.dart';
import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class LineDashExamplesWidget extends StatelessWidget {
  LineDashExamplesWidget({super.key});

  final List<String> _listText = [
    'Line Dash',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/line_dash.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p8,
          ExampleBlockWidget(
            preview: const LineDashExampleWidget(),
            title: S.current.basicUsage,
            description: Text(_listText[0]),
            pathFileExample: _listPathFile[0],
          ),
        ],
      );
}
