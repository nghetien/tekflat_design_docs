import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class ButtonLinkExampleWidget extends StatelessWidget {
  const ButtonLinkExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TekLink(
              text: 'Link Small',
              onPressed: () {},
            ),
            TekHSpace.mainSpace,
            TekLink(
              text: 'Link Small Disabled',
              onPressed: () {},
              disabled: true,
            ),
          ],
        ),
        TekVSpace.mainSpace,
        Row(
          children: [
            TekLink(
              text: 'Link Medium',
              onPressed: () {},
              size: TekLinkSize.medium,
            ),
            TekHSpace.mainSpace,
            TekLink(
              text: 'Link Medium Disabled',
              onPressed: () {},
              size: TekLinkSize.medium,
              disabled: true,
            ),
          ],
        ),
      ],
    );
  }
}
