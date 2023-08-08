import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class ButtonDisabledExampleWidget extends StatelessWidget {
  const ButtonDisabledExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const TekButton(
              type: TekButtonType.primary,
              text: 'Primary',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.primary,
              text: 'Primary Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.outline,
              text: 'Outline',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.outline,
              text: 'Outline Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.danger,
              text: 'Danger',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.danger,
              text: 'Danger Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.warning,
              text: 'Warning',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.warning,
              text: 'Warning Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.success,
              text: 'Success',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.success,
              text: 'Success Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.info,
              text: 'Info',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.info,
              text: 'Info Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.ghost,
              text: 'Ghost',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.ghost,
              text: 'Ghost Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.themeGhost,
              text: 'Theme Ghost',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.themeGhost,
              text: 'Theme Ghost Disabled',
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            const TekButton(
              type: TekButtonType.none,
              text: 'None',
            ),
            TekHSpace.mainSpace,
            const TekButton(
              type: TekButtonType.none,
              text: 'None Disabled',
              disabled: true,
            ),
          ],
        ),
      ],
    );
  }
}
