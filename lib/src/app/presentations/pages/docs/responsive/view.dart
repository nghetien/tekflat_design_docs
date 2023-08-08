import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.responsive,
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
          desktop: ResponsivePageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: ResponsivePageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: ResponsivePageLayoutMobile(),
        ),
      );
}
