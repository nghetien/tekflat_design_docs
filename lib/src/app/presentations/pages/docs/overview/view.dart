import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.overview,
            children: [
              SideBarModelItem(
                title: S.current.general,
              ),
              SideBarModelItem(
                title: S.current.layout,
              ),
              SideBarModelItem(
                title: S.current.navigation,
              ),
              SideBarModelItem(
                title: S.current.dataEntry,
              ),
              SideBarModelItem(
                title: S.current.dataDisplay,
              ),
              SideBarModelItem(
                title: S.current.feedback,
              ),
            ],
          ),
        ],
        child: TekResponsive.resBuilderWithOutLB(
          // ignore: prefer_const_constructors
          desktop: OverviewPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: OverviewPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: OverviewPageLayoutMobile(),
        ),
      );
}
