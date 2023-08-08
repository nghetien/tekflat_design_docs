import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class ButtonIconsExampleWidget extends StatelessWidget {
  const ButtonIconsExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Wrap(
          spacing: TekSpacings().mainSpacing,
          runSpacing: TekSpacings().mainSpacing,
          children: <Widget>[
            TekButton(
              onPressed: () {},
              text: 'TekButton',
              iconData: Icons.add_rounded,
              type: TekButtonType.primary,
              size: TekButtonSize.large,
            ),
            TekButton(
              onPressed: () {},
              text: 'TekButton',
              iconData: Icons.search_rounded,
              iconIsRight: false,
              type: TekButtonType.primary,
              size: TekButtonSize.large,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        const TekLineDash(),
        TekVSpace.mainSpace,
        Wrap(
          spacing: TekSpacings().mainSpacing,
          runSpacing: TekSpacings().mainSpacing,
          children: <Widget>[
            TekButton(
              onPressed: () {},
              type: TekButtonType.primary,
              size: TekButtonSize.large,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Icon(
                    Icons.send_rounded,
                    color: TekColors.white,
                  ),
                  TekHSpace.mainSpace,
                  Text(
                    'Customize-TekButton',
                    style: TekTextStyles.body.copyWith(
                      color: TekColors.white,
                    ),
                  ),
                  TekHSpace.mainSpace,
                  const Icon(
                    Icons.add_rounded,
                    color: TekColors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
