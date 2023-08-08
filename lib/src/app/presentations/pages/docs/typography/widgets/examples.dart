import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/app/presentations/examples/typography.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TitlesExamplesWidget extends StatelessWidget {
  TitlesExamplesWidget({super.key});

  final _listPathFile = [
    'lib/src/app/presentations/examples/typography.dart',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TekVSpace.p8,
        ExampleBlockWidget(
          preview: const TypographyExampleWidget(),
          title: S.current.basicUsage,
          description: Text(S.current.typographyBasicUsage),
          pathFileExample: _listPathFile[0],
        ),
      ],
    );
  }
}
