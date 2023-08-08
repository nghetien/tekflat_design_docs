import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class OverviewPageLayoutMobile extends StatelessWidget {
  const OverviewPageLayoutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PageHeaderWidget(
          title: S.current.overview,
          description: S.current.overviewHeader,
        ),
        TekVSpace.mainSpace,
        TekDivider(),
        TekVSpace.mainSpace,
        // OverviewContentWidget(),
      ],
    );
  }
}
