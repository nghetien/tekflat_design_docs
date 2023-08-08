import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:flutter/material.dart';

class PageContainerWidget extends StatefulWidget {
  const PageContainerWidget({
    Key? key,
    required this.child,
    required this.sideBarModelItems,
  }) : super(key: key);

  final Widget child;
  final List<SideBarModelItem> sideBarModelItems;

  @override
  State<PageContainerWidget> createState() => _PageContainerWidgetState();
}

class _PageContainerWidgetState extends State<PageContainerWidget> {
  final ScrollController _verticalScrollController = ScrollController();

  int _getRateForScreen() {
    if (TekResponsiveConfig().screenDevice.isDesktop) return 5;
    if (TekResponsiveConfig().screenDevice.isTablet) return 3;
    if (TekResponsiveConfig().screenDevice.isMobile) return 1;
    return 1;
  }

  double _getWidthOfSideBar() {
    if (TekResponsiveConfig().screenDevice.isDesktop) return 300;
    if (TekResponsiveConfig().screenDevice.isTablet) return 210;
    if (TekResponsiveConfig().screenDevice.isMobile) return TekSpacings().p18;
    return 200;
  }

  @override
  Widget build(BuildContext context) {
    return TekVerticalScroll(
      scrollController: _verticalScrollController,
      builder: (context, wrapperVerticalContent, scrollVerticalWidget) {
        return Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: wrapperVerticalContent(
                    SingleChildScrollView(
                      controller: _verticalScrollController,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: TekSpacings().p18,
                              horizontal: TekSpacings().p18 * _getRateForScreen(),
                            ).copyWith(right: _getWidthOfSideBar()),
                            child: widget.child,
                          ),
                          const CopyRightWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
                if (scrollVerticalWidget != null) scrollVerticalWidget,
              ],
            ),
            if (!TekResponsiveConfig().screenDevice.isMobile)
              Positioned(
                top: 0,
                right: TekScrollConfig.scrollWidthInVerticalOnHover,
                child: SideBarWidget(
                  items: widget.sideBarModelItems,
                ),
              ),
          ],
        );
      },
    );
  }
}
