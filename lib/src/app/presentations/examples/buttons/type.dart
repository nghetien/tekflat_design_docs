import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class ButtonTypeExampleWidget extends StatelessWidget {
  const ButtonTypeExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: TekSpacings().mainSpacing,
      runSpacing: TekSpacings().mainSpacing,
      children: const [
        TekButton(
          type: TekButtonType.primary,
          text: 'Primary',
        ),
        TekButton(
          type: TekButtonType.outline,
          text: 'Outline',
        ),
        TekButton(
          type: TekButtonType.danger,
          text: 'Danger',
        ),
        TekButton(
          type: TekButtonType.warning,
          text: 'Warning',
        ),
        TekButton(
          type: TekButtonType.success,
          text: 'Success',
        ),
        TekButton(
          type: TekButtonType.info,
          text: 'Info',
        ),
        TekButton(
          type: TekButtonType.ghost,
          text: 'Ghost',
        ),
        TekButton(
          type: TekButtonType.themeGhost,
          text: 'Theme Ghost',
        ),
        TekButton(
          type: TekButtonType.none,
          text: 'None',
        ),
      ],
    );
  }
}
