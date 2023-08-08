import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class BadgesPage extends StatelessWidget {
  const BadgesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
    // ignore: prefer_const_constructors
    sideBarModelItems: [
      SideBarModelItem(
        title: S.current.badges,
        children: [
          SideBarModelItem(
            title: S.current.examples,
          ),
          SideBarModelItem(
            title: 'API',
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
      desktop: BadgesPageLayoutWeb(),
      // ignore: prefer_const_constructors
      tablet: BadgesPageLayoutTablet(),
      // ignore: prefer_const_constructors
      mobile: BadgesPageLayoutMobile(),
    ),
  );
}
