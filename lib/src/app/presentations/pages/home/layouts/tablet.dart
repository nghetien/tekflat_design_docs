import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:flutter/material.dart';

class HomePageLayoutTablet extends StatelessWidget {
  const HomePageLayoutTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            const HomeNavBarWidget(),
            TekVSpace.p32,
            const HomeContentWidget(),
          ],
        ),
      );
}
