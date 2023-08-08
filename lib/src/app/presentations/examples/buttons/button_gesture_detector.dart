import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class TextButtonExampleWidget extends StatelessWidget {
  const TextButtonExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(
            spacing: TekSpacings().mainSpacing,
            runSpacing: TekSpacings().mainSpacing,
            children: <Widget>[
              TekButtonGD(
                type: TekButtonGDType.text,
                onPressed: () {},
                text: 'TekButtonGDType.text',
              ),
              TekButtonGD(
                type: TekButtonGDType.icon,
                onPressed: () {},
                iconData: Icons.send_rounded,
              ),
              TekButtonGD(
                type: TekButtonGDType.customize,
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(
                      Icons.send_rounded,
                    ),
                    TekHSpace.mainSpace,
                    const Text(
                      'TekButtonGDType.customize',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
}
