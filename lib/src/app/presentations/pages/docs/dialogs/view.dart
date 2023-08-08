import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.dialogs,
            children: [
              SideBarModelItem(
                title: S.current.examples,
              ),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: 'Option Dialogs',
                  ),
                  SideBarModelItem(
                    title: 'Customize Dialogs',
                  ),
                  SideBarModelItem(
                    title: 'Default Dialogs',
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
          desktop: DialogsPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: DialogsPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: DialogsPageLayoutMobile(),
        ),
      );
}
