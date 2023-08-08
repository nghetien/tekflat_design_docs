import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TekResponsive.appResBuilder(
        TekResponsive.resBuilder(
          desktop: const HomePageLayoutWeb(),
          tablet: const HomePageLayoutWeb(),
          mobile: const HomePageLayoutMobile(),
        ),
      );
}
