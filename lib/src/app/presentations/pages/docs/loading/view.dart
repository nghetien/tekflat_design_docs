import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
    // ignore: prefer_const_constructors
    sideBarModelItems: [
      SideBarModelItem(
        title: S.current.button,
        children: [
          SideBarModelItem(
            title: S.current.whenToUse,
          ),
          SideBarModelItem(
            title: S.current.examples,
            children: [
              SideBarModelItem(
                title: 'App loading',
              ),
              SideBarModelItem(
                title: 'Wrap loading',
              ),
              SideBarModelItem(
                title: 'Loading Widget',
              ),
            ],
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
      desktop: LoadingPageLayoutWeb(),
      // ignore: prefer_const_constructors
      tablet: LoadingPageLayoutTablet(),
      // ignore: prefer_const_constructors
      mobile: LoadingPageLayoutMobile(),
    ),
  );
}
