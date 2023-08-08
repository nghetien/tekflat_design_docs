import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class CheckBoxesPage extends StatelessWidget {
  const CheckBoxesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.checkBoxes,
            children: [
              SideBarModelItem(
                title: S.current.examples,
                children: [
                  SideBarModelItem(
                    title: 'CheckBoxes',
                  ),
                  SideBarModelItem(
                    title: 'Form',
                  ),
                ],
              ),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: 'CheckBoxes',
                  ),
                  SideBarModelItem(
                    title: 'Form',
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
          desktop: CheckBoxesPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: CheckBoxesPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: CheckBoxesPageLayoutMobile(),
        ),
      );
}
