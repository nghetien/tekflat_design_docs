import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class ButtonLoadingExampleWidget extends StatefulWidget {
  const ButtonLoadingExampleWidget({super.key});

  @override
  State<ButtonLoadingExampleWidget> createState() => _ButtonLoadingExampleWidgetState();
}

class _ButtonLoadingExampleWidgetState extends State<ButtonLoadingExampleWidget> {

  bool _loading1 = false;
  bool _loading2 = false;
  bool _loading3 = false;

  void _setLoading1(bool loading) {
    setState(() {
      _loading1 = loading;
    });
  }

  void _setLoading2(bool loading) {
    setState(() {
      _loading2 = loading;
    });
  }

  void _setLoading3(bool loading) {
    setState(() {
      _loading3 = loading;
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
          crossAxisAlignment: WrapCrossAlignment.start,
          children: const [
            TekButton(
              text: 'Loading',
              type: TekButtonType.outline,
              loading: true,
            ),
            TekButton(
              text: 'Loading',
              type: TekButtonType.primary,
              loading: true,
            ),
            TekButton(
              text: 'Loading',
              type: TekButtonType.themeGhost,
              loading: true,
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
              text: 'Loading',
              type: TekButtonType.success,
              loading: _loading1,
              onPressed: () => _setLoading1(true),
            ),
            TekButton(
              iconData: Icons.search_rounded,
              type: TekButtonType.primary,
              loading: _loading2,
              onPressed: () => _setLoading2(true),
            ),
            TekButton(
              text: 'Loading',
              iconData: Icons.search_rounded,
              type: TekButtonType.themeGhost,
              loading: _loading3,
              onPressed: () => _setLoading3(true),
            ),
          ],
        ),
      ],
    );
  }
}
