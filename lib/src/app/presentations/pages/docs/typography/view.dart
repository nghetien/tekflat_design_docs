import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.title,
            children: [
              SideBarModelItem(
                title: S.current.examples,
              ),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: S.current.basicUsage,
                  ),
                ],
              ),
              SideBarModelItem(
                title: S.current.makeAQuestion,
                children: [
                  SideBarModelItem(
                    title: 'Typography',
                  ),
                ],
              ),
            ],
          ),
        ],
        // ignore: prefer_const_constructors
        child: TekResponsive.resBuilder(
          // ignore: prefer_const_constructors
          desktop: TitlesPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: TitlesPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: TitlesPageLayoutMobile(),
        ),
      );
}
