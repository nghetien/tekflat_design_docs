import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: TekColors().primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TekVSpace.mainSpace,
          Text(
            'Made with by: Nghê Quyết Tiến',
            style: TekTextStyles.titleMedium.copyWith(
              color: TekColors.white,
            ),
          ),
          TekVSpace.p4,
          Text(
            '${S.current.copyright} © ${DateTime.now().year} Teko Flat Design',
            style: TekTextStyles.titleMedium.copyWith(
              color: TekColors.white,
            ),
          ),
          TekVSpace.mainSpace,
        ],
      ),
    );
  }
}
