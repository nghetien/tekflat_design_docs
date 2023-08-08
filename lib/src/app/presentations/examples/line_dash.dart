import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class LineDashExampleWidget extends StatelessWidget {
  const LineDashExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Line 1'),
        TekVSpace.mainSpace,
        const TekLineDash(),
        TekVSpace.mainSpace,
        const Text('Line 2'),
        TekVSpace.mainSpace,
        TekLineDash(
          color: TekColors().primary,
        ),
        TekVSpace.mainSpace,
        const Text('Line 3'),
      ],
    );
  }
}
