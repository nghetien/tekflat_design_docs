import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

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
                    title: 'Default Button',
                  ),
                  SideBarModelItem(
                    title: 'Button Icon',
                  ),
                  SideBarModelItem(
                    title: 'Button Inkwell',
                  ),
                  SideBarModelItem(
                    title: 'Button GestureDetector',
                  ),
                ],
              ),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: 'Default Button',
                  ),
                  SideBarModelItem(
                    title: 'Button Icon',
                  ),
                  SideBarModelItem(
                    title: 'Button Inkwell',
                  ),
                  SideBarModelItem(
                    title: 'Button GestureDetector',
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
          desktop: ButtonsPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: ButtonsPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: ButtonsPageLayoutMobile(),
        ),
      );
}
