import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TagsPage extends StatelessWidget {
  const TagsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.tags,
            children: [
              SideBarModelItem(title: S.current.examples, children: [
                SideBarModelItem(
                  title: 'Tags',
                ),
                SideBarModelItem(
                  title: 'Dynamic Tags',
                ),
              ]),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: 'Tags',
                  ),
                  SideBarModelItem(
                    title: 'Dynamic Tags',
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
          desktop: TagsPageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: TagsPageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: TagsPageLayoutMobile(),
        ),
      );
}
