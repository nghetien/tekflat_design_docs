import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class ResponsiveExampleWidget extends StatelessWidget {
  const ResponsiveExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, __) => TekResponsive.resBuilderWithOutLB(
          tablet: _content(),
          mobile: _content(),
          desktop: _content(),
        ),
      );

  Widget _content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekTypography(
            text: 'Device: ${TekResponsiveConfig().screenDevice}',
            type: TekTypographyType.level4,
            maxLines: 2,
            color: TekColors().primary,
          ),
          TekVSpace.mainSpace,
          TekTypography(
            text: 'Width: ${TekResponsiveConfig().currentWidth}',
            type: TekTypographyType.level4,
            maxLines: 2,
            color: TekColors().primary,
          ),
        ],
      );
}
