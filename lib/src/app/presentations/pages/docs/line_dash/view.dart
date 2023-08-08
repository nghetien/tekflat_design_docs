import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class LineDashPage extends StatelessWidget {
  const LineDashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
    // ignore: prefer_const_constructors
    sideBarModelItems: [
      SideBarModelItem(
        title: S.current.lineDash,
        children: [
          SideBarModelItem(
            title: S.current.examples,
                children: [
                  SideBarModelItem(
                    title: S.current.basicUsage,
                  ),
                ],
              ),
          SideBarModelItem(
            title: 'API',
                children: [
                  SideBarModelItem(
                    title: S.current.lineDash,
                  ),
                ],
              ),
          SideBarModelItem(
            title: S.current.makeAQuestion,
          ),
        ],
      ),
    ],
    // ignore: prefer_const_constructors
    child: TekResponsive.resBuilder(
      // ignore: prefer_const_constructors
      desktop: LineDashPageLayoutWeb(),
      // ignore: prefer_const_constructors
      tablet: LineDashPageLayoutTablet(),
      // ignore: prefer_const_constructors
      mobile: LineDashPageLayoutMobile(),
    ),
  );
}
