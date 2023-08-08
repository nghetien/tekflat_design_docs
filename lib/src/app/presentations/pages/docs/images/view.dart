import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageContainerWidget(
    // ignore: prefer_const_constructors
    sideBarModelItems: [
      SideBarModelItem(
        title: S.current.images,
        children: [
          SideBarModelItem(
              title: S.current.examples,
              children: [
                SideBarModelItem(
                  title: 'Image',
                ),
                SideBarModelItem(
                  title: 'Error',
                ),
              ]
          ),
          SideBarModelItem(
            title: 'API',
            children: [
              SideBarModelItem(
                title: 'Asset Image',
              ),
              SideBarModelItem(
                title: 'Network Image',
              ),
            ]
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
      desktop: ImagesPageLayoutWeb(),
      // ignore: prefer_const_constructors
      tablet: ImagesPageLayoutTablet(),
      // ignore: prefer_const_constructors
      mobile: ImagesPageLayoutMobile(),
    ),
  );
}
