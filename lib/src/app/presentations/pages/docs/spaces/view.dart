import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
    // ignore: prefer_const_constructors
    sideBarModelItems: [
      SideBarModelItem(
        title: S.current.spaces,
        children: [
          SideBarModelItem(
              title: S.current.examples, children: [
                SideBarModelItem(
                  title: 'Vertical Space',
                ),
                SideBarModelItem(
                  title: 'Horizontal Space',
                ),
              ]),
          SideBarModelItem(
              title: 'API', children: [
                SideBarModelItem(
                  title: 'Vertical Space',
                ),
                SideBarModelItem(
                  title: 'Horizontal Space',
                ),
              ]),
          SideBarModelItem(
            title: S.current.makeAQuestion,
          ),
        ],
      ),
    ],
    // ignore: prefer_const_constructors
    child: TekResponsive.resBuilder(
      // ignore: prefer_const_constructors
      desktop: SpacesPageLayoutWeb(),
      // ignore: prefer_const_constructors
      tablet: SpacesPageLayoutTablet(),
      // ignore: prefer_const_constructors
      mobile: SpacesPageLayoutMobile(),
    ),
  );
}
