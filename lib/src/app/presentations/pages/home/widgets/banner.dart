import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class HoneBannerWidget extends StatelessWidget {
  const HoneBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SvgPicture.asset(
        AppAssetImages.banner,
        height: 300,
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
