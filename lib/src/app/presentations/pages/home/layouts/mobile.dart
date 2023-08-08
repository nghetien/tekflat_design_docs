import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';

class HomePageLayoutMobile extends StatelessWidget {
  const HomePageLayoutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const HomeNavBarWidget(),
          Expanded(
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TekVSpace.mainSpace,
                    TekVSpace.p32,
                    const HoneBannerWidget(),
                    TekVSpace.p32,
                    const HomeContentWidget(),
                    TekVSpace.mainSpace,
                    TekVSpace.p32,
                    const HomeDesignFrameworkWidget(),
                    TekVSpace.p32,
                    HomeRichComponentsWidget(),
                    TekVSpace.mainSpace,
                    TekVSpace.p32,
                    const HomeFooterWidget(),
                    const HomeAuthWidget(),
                  ],
                ),
              ),
            ),
          )
        ],
      );
}
