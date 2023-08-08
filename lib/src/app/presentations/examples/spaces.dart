import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class SpacesExampleWidget extends StatelessWidget {
  const SpacesExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TekTypography(
          text: 'Vertical Space is showed by grey background',
          type: TekTypographyType.level5,
          fontWeight: FontWeight.w500,
        ),
        const Text('TekVSpace.p4'),
        Container(
          color: TekColors.greyOpacity04,
          width: double.infinity,
          child: TekVSpace.p4,
        ),
        const Text('TekVSpace.p8'),
        Container(
          color: TekColors.greyOpacity04,
          width: double.infinity,
          child: TekVSpace.p8,
        ),
        const Text('TekVSpace.p12'),
        Container(
          color: TekColors.greyOpacity04,
          width: double.infinity,
          child: TekVSpace.p12,
        ),
        const Text('TekVSpace.p18'),
        Container(
          color: TekColors.greyOpacity04,
          width: double.infinity,
          child: TekVSpace.p18,
        ),
        const Text('TekVSpace.p32'),
        Container(
          color: TekColors.greyOpacity04,
          width: double.infinity,
          child: TekVSpace.p32,
        ),
        TekVSpace.mainSpace,
        const TekTypography(
          text: 'Horizontal Space is showed by grey background',
          type: TekTypographyType.level5,
          fontWeight: FontWeight.w500,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            const Text('TekHSpace.p4'),
            Container(
              height: 20,
              color: TekColors.greyOpacity04,
              child: TekHSpace.p4,
            ),
            const Text('TekHSpace.p8'),
            Container(
              height: 20,
              color: TekColors.greyOpacity04,
              child: TekHSpace.p8,
            ),
            const Text('TekHSpace.p12'),
            Container(
              height: 20,
              color: TekColors.greyOpacity04,
              child: TekHSpace.p12,
            ),
            const Text('TekHSpace.p18'),
            Container(
              height: 20,
              color: TekColors.greyOpacity04,
              child: TekHSpace.p18,
            ),
            const Text('TekHSpace.p32'),
            Container(
              height: 20,
              color: TekColors.greyOpacity04,
              child: TekHSpace.p32,
            ),
          ],
        )
      ],
    );
  }
}
