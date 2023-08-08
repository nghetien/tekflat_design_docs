import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class ListViewBuilderExampleWidget extends StatelessWidget {
  const ListViewBuilderExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => TekListView(
        shrinkWrap: true,
        items: const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
        numberOfItemsInRow: TekResponsiveConfig().screenDevice.isDesktop
            ? 2
            : TekResponsiveConfig().screenDevice.isTablet
                ? 3
                : 4,
        itemBuilder: (context, index, value) {
          return TekCard(
            backgroundColor: TekColors.greyOpacity02,
            child: Text(
              value.toString(),
            ),
          );
        },
      );
}
