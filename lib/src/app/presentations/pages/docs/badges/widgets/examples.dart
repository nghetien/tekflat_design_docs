import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/badges.dart';
import 'package:flutter/material.dart';

class BadgesExamplesWidget extends StatelessWidget {
  BadgesExamplesWidget({super.key});

  final List<String> _listText = [
    'Basic Badges',
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/badges.dart',
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
          //   preview: const BadgesExampleWidget(),
          // ),
        ],
      );
}
