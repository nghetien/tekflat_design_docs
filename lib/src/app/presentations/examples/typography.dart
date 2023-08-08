import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class TypographyExampleWidget extends StatelessWidget {
  const TypographyExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TekTypography(
          text: 'Level1. Teko Flat Design',
          type: TekTypographyType.level1,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level2. Teko Flat Design',
          type: TekTypographyType.level2,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level3. Teko Flat Design',
          type: TekTypographyType.level3,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level4. Teko Flat Design',
          type: TekTypographyType.level4,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level5. Teko Flat Design',
          type: TekTypographyType.level5,
        ),
      ],
    );
  }
}
