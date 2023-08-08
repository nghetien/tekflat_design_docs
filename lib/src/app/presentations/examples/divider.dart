import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class DividerExampleWidget extends StatelessWidget {
  const DividerExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Line 1'),
        TekVSpace.mainSpace,
        const TekDivider(),
        TekVSpace.mainSpace,
        const Text('Line 2'),
        TekVSpace.mainSpace,
        TekDivider(
          color: TekColors().primary,
        ),
        TekVSpace.mainSpace,
        const Text('Line 3'),
      ],
    );
  }
}
