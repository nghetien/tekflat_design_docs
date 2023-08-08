import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class CardsExampleWidget extends StatelessWidget {
  const CardsExampleWidget({super.key});

  @override
  Widget build(BuildContext context) =>
      Container(
        padding: EdgeInsets.all(TekSpacings().mainSpacing),
        width: double.infinity,
        color: TekColors.greyOpacity02,
        child: Column(
          children: <Widget>[
            const TekCard(
              child: Text('Basic Card'),
            ),
            TekVSpace.p8,
            const TekCard(
              padding: EdgeInsets.all(16),
              child: Text('Basic Card'),
            ),
            TekVSpace.p8,
            const TekCard(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              child: Text('Basic Card'),
            ),
            TekVSpace.p8,
            const TekCard(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              borderRadius: TekCorners.cornerBorder11,
              child: Text('Basic Card'),
            ),
            TekVSpace.p8,
          ],
        ),
      );
}
