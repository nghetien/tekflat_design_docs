import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class InkwellButtonExampleWidget extends StatelessWidget {
  const InkwellButtonExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Wrap(
        spacing: TekSpacings().mainSpacing,
        runSpacing: TekSpacings().mainSpacing,
        children: <Widget>[
          TekButtonInkwell(
                onPressed: () {},
                text: 'TekButtonInkwell',
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
          TekButtonInkwell(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(
                      Icons.send_rounded,
                    ),
                    TekHSpace.mainSpace,
                    const Text(
                      'Customize-TekButtonInkwell',
                    ),
                TekHSpace.mainSpace,
                const Icon(
                  Icons.add_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
