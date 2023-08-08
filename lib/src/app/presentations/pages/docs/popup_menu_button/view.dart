import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class PopupMenuButtonPage extends StatelessWidget {
  const PopupMenuButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.popupMenuButton,
            children: [
              SideBarModelItem(
                title: S.current.examples,
                children: [
                  SideBarModelItem(
                    title: S.current.popupMenuButton,
                  ),
                  SideBarModelItem(
                    title: S.current.menuAnchor,
                  ),
                ]
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
          desktop: PopupMenuButtonPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: PopupMenuButtonPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: PopupMenuButtonPageLayoutMobile(),
        ),
      );
}
