import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.inputs,
            children: [
              SideBarModelItem(
                title: S.current.examples,
                children: [
                  SideBarModelItem(
                    title: 'Basic Input',
                  ),
                  SideBarModelItem(
                    title: 'DateTime',
                  ),
                  SideBarModelItem(
                    title: 'Password',
                  ),
                  SideBarModelItem(
                    title: 'Dropdown',
                  ),
                  SideBarModelItem(
                    title: 'Dropdown Select',
                  ),
                  SideBarModelItem(
                    title: 'Type Ahead',
                  ),
                ],
              ),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: 'Basic Input',
                  ),
                  SideBarModelItem(
                    title: 'DateTime',
                  ),
                  SideBarModelItem(
                    title: 'Password',
                  ),
                  SideBarModelItem(
                    title: 'Dropdown',
                  ),
                  SideBarModelItem(
                    title: 'Dropdown Select',
                  ),
                  SideBarModelItem(
                    title: 'Type Ahead',
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
          desktop: InputsPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: InputsPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: InputsPageLayoutMobile(),
        ),
      );
}
