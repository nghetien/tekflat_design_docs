import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class TitleExampleWidget extends StatelessWidget {
  const TitleExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TekTypography(
          text: 'Level1. Flatter UI',
          type: TekTypographyType.level1,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level2. Flatter UI',
          type: TekTypographyType.level2,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level3. Flatter UI',
          type: TekTypographyType.level3,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level4. Flatter UI',
          type: TekTypographyType.level4,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Level5. Flatter UI',
          type: TekTypographyType.level5,
        ),
        TekVSpace.mainSpace,
      ],
    );
  }
}
