import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/divider.dart';
import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class DividerExamplesWidget extends StatelessWidget {
  DividerExamplesWidget({super.key});

  final _listPathFile = [
    'lib/src/app/presentations/examples/divider.dart',
  ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p8,
          ExampleBlockWidget(
            preview: const DividerExampleWidget(),
            title: S.current.basicUsage,
            description: Text(S.current.divider),
            pathFileExample: _listPathFile[0],
          ),
        ],
      );
}
