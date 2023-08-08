import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class DataTablePage extends StatelessWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
        // ignore: prefer_const_constructors
        sideBarModelItems: [
          SideBarModelItem(
            title: S.current.dataTable,
            children: [
              SideBarModelItem(
                title: S.current.whenToUse,
              ),
              SideBarModelItem(
                title: S.current.examples,
                children: [
                  SideBarModelItem(
                    title: S.current.basicUsage,
                  ),
                  SideBarModelItem(
                    title: S.current.selection,
                  ),
                  SideBarModelItem(
                    title: S.current.filterAndSort,
                  ),
                  SideBarModelItem(
                    title: S.current.expanded,
                  ),
                  SideBarModelItem(
                    title: 'Fixed',
                  ),
                  SideBarModelItem(
                    title: S.current.responsive,
                  ),
                  SideBarModelItem(
                    title: S.current.loadingData,
                  ),
                ],
              ),
              SideBarModelItem(
                title: 'API',
                children: [
                  SideBarModelItem(
                    title: 'Data Table',
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
          desktop: DataTablePageLayoutWeb(),
          // ignore: prefer_const_constructors
          tablet: DataTablePageLayoutTablet(),
          // ignore: prefer_const_constructors
          mobile: DataTablePageLayoutMobile(),
        ),
      );
}
