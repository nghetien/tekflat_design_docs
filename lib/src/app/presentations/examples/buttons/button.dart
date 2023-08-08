import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class ButtonExampleWidget extends StatelessWidget {
  const ButtonExampleWidget({Key? key}) : super(key: key);

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
              size: TekButtonSize.large,
              type: TekButtonType.primary,
              onPressed: () {},
              text: 'TekButton-Large-Primary',
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.success,
              onPressed: () {},
              text: 'TekButton-Large-Success',
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.warning,
              onPressed: () {},
              text: 'TekButton-Large-Warning',
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.danger,
              onPressed: () {},
              text: 'TekButton-Large-Danger',
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.info,
              onPressed: () {},
              text: 'TekButton-Large-Info',
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.outline,
              onPressed: () {},
              text: 'TekButton-Large-Outline',
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.none,
              onPressed: () {},
              text: 'TekButton-Large-None',
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
              
              type: TekButtonType.primary,
              onPressed: () {},
              text: 'TekButton-Medium-Primary',
            ),
            TekButton(
              
              type: TekButtonType.success,
              onPressed: () {},
              text: 'TekButton-Medium-Success',
            ),
            TekButton(
              
              type: TekButtonType.warning,
              onPressed: () {},
              text: 'TekButton-Medium-Warning',
            ),
            TekButton(
              
              type: TekButtonType.danger,
              onPressed: () {},
              text: 'TekButton-Medium-Danger',
            ),
            TekButton(
              
              type: TekButtonType.info,
              onPressed: () {},
              text: 'TekButton-Medium-Info',
            ),
            TekButton(
              
              type: TekButtonType.outline,
              onPressed: () {},
              text: 'TekButton-Medium-Outline',
            ),
            TekButton(
              
              type: TekButtonType.none,
              onPressed: () {},
              text: 'TekButton-Medium-None',
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
              size: TekButtonSize.small,
              type: TekButtonType.primary,
              onPressed: () {},
              text: 'TekButton-Small-Primary',
            ),
            TekButton(
              size: TekButtonSize.small,
              type: TekButtonType.success,
              onPressed: () {},
              text: 'TekButton-Small-Success',
            ),
            TekButton(
              size: TekButtonSize.small,
              type: TekButtonType.warning,
              onPressed: () {},
              text: 'TekButton-Small-Warning',
            ),
            TekButton(
              size: TekButtonSize.small,
              type: TekButtonType.danger,
              onPressed: () {},
              text: 'TekButton-Small-Danger',
            ),
            TekButton(
              size: TekButtonSize.small,
              type: TekButtonType.info,
              onPressed: () {},
              text: 'TekButton-Small-Info',
            ),
            TekButton(
              size: TekButtonSize.small,
              type: TekButtonType.outline,
              onPressed: () {},
              text: 'TekButton-Small-Outline',
            ),
            TekButton(
              size: TekButtonSize.small,
              type: TekButtonType.none,
              onPressed: () {},
              text: 'TekButton-Small-None',
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
              size: TekButtonSize.large,
              type: TekButtonType.primary,
              onPressed: () {},
              text: 'TekButton-Large-Primary-Loading',
              loading: true,
            ),
            TekButton(
              size: TekButtonSize.large,
              type: TekButtonType.primary,
              onPressed: () {},
              text: 'TekButton-Large-Success-Disable',
              disabled: true,
            ),
          ],
        ),
      ],
    );
  }
}
