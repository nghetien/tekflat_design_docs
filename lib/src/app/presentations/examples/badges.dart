import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class BadgesExampleWidget extends StatelessWidget {
  const BadgesExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          TekBadge(
            count: 99,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: TekCorners().mainCornerBorder,
                color: TekColors.greyOpacity04,
              ),
              padding: EdgeInsets.all(TekSpacings().mainSpacing),
              child: Icon(
                Icons.notifications_rounded,
                size: TekIconSizes().s24,
              ),
            ),
          ),
        ],
      );
}
