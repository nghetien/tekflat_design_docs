import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class ButtonSizeExampleWidget extends StatefulWidget {
  const ButtonSizeExampleWidget({super.key});

  @override
  State<ButtonSizeExampleWidget> createState() => _ButtonSizeExampleWidgetState();
}

class _ButtonSizeExampleWidgetState extends State<ButtonSizeExampleWidget> {
  TekButtonSize _size = TekButtonSize.small;

  void _setSize(TekButtonSize size) {
    setState(() {
      _size = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: TekSpacings().mainSpacing,
          runSpacing: TekSpacings().mainSpacing,
          children: [
            TekButton(
              text: 'Small',
              type: _size == TekButtonSize.small ? TekButtonType.outline : TekButtonType.themeGhost,
              onPressed: () => _setSize(TekButtonSize.small),
            ),
            TekButton(
              text: 'Medium',
              type: _size == TekButtonSize.medium ? TekButtonType.outline : TekButtonType.themeGhost,
              onPressed: () => _setSize(TekButtonSize.medium),
            ),
            TekButton(
              text: 'Large',
              type: _size == TekButtonSize.large ? TekButtonType.outline : TekButtonType.themeGhost,
              onPressed: () => _setSize(TekButtonSize.large),
            ),
            TekButton(
              text: 'Extra Large',
              type: _size == TekButtonSize.extraLarge ? TekButtonType.outline : TekButtonType.themeGhost,
              onPressed: () => _setSize(TekButtonSize.extraLarge),
            ),
          ],
        ),
        TekVSpace.mainSpace,
        const TekDivider(),
        TekVSpace.mainSpace,
        Wrap(
          spacing: TekSpacings().mainSpacing,
          runSpacing: TekSpacings().mainSpacing,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            TekButton(
              text: 'Primary',
              type: TekButtonType.primary,
              size: _size,
            ),
            TekButton(
              text: 'Outline',
              type: TekButtonType.outline,
              size: _size,
            ),
            TekButton(
              text: 'Ghost',
              type: TekButtonType.ghost,
              size: _size,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Wrap(
          spacing: TekSpacings().mainSpacing,
          runSpacing: TekSpacings().mainSpacing,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            TekButton(
              type: TekButtonType.primary,
              text: 'Loading',
              size: _size,
              loading: true,
            ),
            TekButton(
              iconData: Icons.search_rounded,
              type: TekButtonType.primary,
              size: _size,
              disabled: true,
            ),
            TekButton(
              text: 'Search',
              type: TekButtonType.primary,
              iconData: Icons.search_rounded,
              size: _size,
            ),
            TekButton(
              text: 'Add',
              type: TekButtonType.primary,
              iconData: Icons.add_rounded,
              size: _size,
            ),
          ],
        )
      ],
    );
  }
}
