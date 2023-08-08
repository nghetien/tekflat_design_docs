import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class InputsAPIsWidget extends StatelessWidget {
  const InputsAPIsWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekTypography(
            text: '${S.current.updating}...',
            type: TekTypographyType.level5,
          ),
        ],
      );
}
