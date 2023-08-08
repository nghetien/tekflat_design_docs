import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';

class HomePageLayoutWeb extends StatefulWidget {
  const HomePageLayoutWeb({Key? key}) : super(key: key);

  @override
  State<HomePageLayoutWeb> createState() => _HomePageLayoutWebState();
}

class _HomePageLayoutWebState extends State<HomePageLayoutWeb> {
  final ScrollController _verticalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeNavBarWidget(),
        Expanded(
          child: TekVerticalScroll(
            scrollController: _verticalScrollController,
            builder: (context, wrapperVerticalContent, scrollVerticalWidget) {
              return Row(
                children: [
                  Expanded(
                    child: wrapperVerticalContent(
                      SingleChildScrollView(
                        controller: _verticalScrollController,
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
                  ),
                  if (scrollVerticalWidget != null) scrollVerticalWidget,
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
