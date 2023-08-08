import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TekMeasureSizePage extends StatelessWidget {
  const TekMeasureSizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
    // ignore: prefer_const_constructors
    sideBarModelItems: [
      SideBarModelItem(
        title: S.current.measureSize,
        children: [
          SideBarModelItem(
            title: S.current.examples,
            children: [
              SideBarModelItem(
                title: S.current.basicUsage,
              ),
            ],
          ),
          SideBarModelItem(
            title: 'API',
            children: [
              SideBarModelItem(
                title: S.current.measureSize,
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
      desktop: TekMeasureSizePageLayoutWeb(),
      // ignore: prefer_const_constructors
      tablet: TekMeasureSizePageLayoutTablet(),
      // ignore: prefer_const_constructors
      mobile: TekMeasureSizePageLayoutMobile(),
    ),
  );
}
