import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/measure_size.dart';
import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class TekMeasureSizeExamplesWidget extends StatelessWidget {
  TekMeasureSizeExamplesWidget({super.key});

  final List<String> _listText = [
    'Measure Size',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/measure_size.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p8,
          ExampleBlockWidget(
            preview: const TekMeasureSizeExampleWidget(),
            title: S.current.basicUsage,
            description: Text(_listText[0]),
            pathFileExample: _listPathFile[0],
          ),
        ],
      );
}
