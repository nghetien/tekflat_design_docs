import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/title.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TitlesExamplesWidget extends StatelessWidget {
  TitlesExamplesWidget({super.key});

  final List<String> _listText = [
    S.current.titleExample1,
  ];

  final _listPathFile = [
    'lib/src/app/presentations/examples/title.dart',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p4,
        const DocsTitleItemWidget(title: 'Title'),
        TekVSpace.p8,
        // ExampleBlockWidget(
        //   description: Text(_listText[0]),
        //   pathFileExample: _listPathFile[0],
        //   preview: const TitleExampleWidget(),
        // ),
      ],
    );
  }
}
