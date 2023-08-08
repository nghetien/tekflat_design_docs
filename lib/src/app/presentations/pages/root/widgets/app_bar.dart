import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:tekflat_design_docs/src/di/di.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late bool _isExpandDrawer;

  @override
  void initState() {
    super.initState();
    _isExpandDrawer = ServicesDI.prefsService.getBool(AppKeys.drawerIsExpandedKey);
  }

  void _setIsExpandDrawer(bool value) {
    setState(() => _isExpandDrawer = value);
    if (TekResponsiveConfig().screenDevice.isDesktop) {
      final state = globalKeyDrawerWeb.currentState as DrawerWebState;
      state.toggle();
    } else {
      (RootController.globalKeyRootPage.currentState as ScaffoldState).openDrawer();
    }
    ServicesDI.prefsService.setBool(AppKeys.drawerIsExpandedKey, value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.appBarTheme.backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: TekColors.greyOpacity04,
            width: TekBorders.thin,
          ),
        ),
      ),
      height: 70 + MediaQuery.of(context).padding.top,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).padding.top),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: TekSpacings().mainSpacing),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _leftAppBar(),
                  _centerAppBar(),
                  _rightAppBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _leftAppBar() => Align(
        alignment: Alignment.centerLeft,
        child: TekButtonGD(
          type: TekButtonGDType.icon,
          onPressed: () => _setIsExpandDrawer(!_isExpandDrawer),
          icon: Icon(
            _isExpandDrawer && TekResponsiveConfig().screenDevice.isDesktop
                ? FontAwesomeIcons.outdent
                : FontAwesomeIcons.indent,
            size: TekIconSizes().s18,
          ),
        ),
      );

  Widget _centerAppBar() => Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TekHSpace.p14,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Text(
                    S.current.today,
                    style: TekTextStyles.body.copyWith(
                      color: TekColors.grey,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    DateTime.now().dayOfMonthOfYear,
                  ),
                ),
              ],
            ),
            TekHSpace.p14,
            TekInput(
              width: TekResponsiveConfig().screenDevice.isDesktop
                  ? 500
                  : TekResponsiveConfig().screenDevice.isTablet
                      ? 350
                      : 220,
              hintText: '${S.current.search}...',
              prefixIcon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: TekColors.grey,
                size: TekIconSizes().s14,
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: TekCorners.cornerBorder8,
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: TekCorners.cornerBorder8,
                borderSide: BorderSide.none,
              ),
              fillColor: context.theme.colorScheme.onBackground,
            ),
            TekHSpace.p14,
          ],
        ),
      );

  Widget _rightAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TekHSpace.p4,
          _userSetting(),
        ],
      );

  Widget _userSetting() => CustomPopupMenuButton(
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry>[
            PopupMenuItem(
              value: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TekButton(
                    type: TekButtonType.outline,
                    onPressed: () {
                      context.popNavigator();
                      ThemeState.to.setCurrentTheme(ThemeMode.light);
                    },
                    iconData: FontAwesomeIcons.lightbulb,
                    textColor: ThemeState.to.currentThemeMode == ThemeMode.light
                        ? TekColors().primary
                        : TekColors.greyOpacity04,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ThemeState.to.currentThemeMode == ThemeMode.light
                            ? TekColors().primary
                            : TekColors.greyOpacity04,
                        width: TekBorders.thin,
                      ),
                      borderRadius: TekCorners().mainCornerBorder,
                    ),
                  ),
                  TekButton(
                    type: TekButtonType.outline,
                    onPressed: () {
                      context.popNavigator();
                      ThemeState.to.setCurrentTheme(ThemeMode.dark);
                    },
                    iconData: FontAwesomeIcons.moon,
                    textColor: ThemeState.to.currentThemeMode == ThemeMode.dark
                        ? TekColors().primary
                        : TekColors.greyOpacity04,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ThemeState.to.currentThemeMode == ThemeMode.dark
                            ? TekColors().primary
                            : TekColors.greyOpacity04,
                        width: TekBorders.thin,
                      ),
                      borderRadius: TekCorners().mainCornerBorder,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TekButton(
                    width: 46,
                    type: TekButtonType.outline,
                    onPressed: () {
                      context.popNavigator();
                      LanguageState.to.setCurrentLocale(S.delegate.supportedLocales[0]);
                    },
                    mainAxisSize: MainAxisSize.max,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: LanguageState.to.currentLocale.languageCode ==
                                S.delegate.supportedLocales[0].languageCode
                            ? TekColors().primary
                            : TekColors.greyOpacity04,
                        width: TekBorders.thin,
                      ),
                      borderRadius: TekCorners().mainCornerBorder,
                    ),
                    child: const TekAssetImage(
                      path: AppAssetImages.vietnam,
                      borderWidth: 0,
                      borderColor: Colors.transparent,
                      width: 30,
                      height: 40,
                    ),
                  ),
                  TekButton(
                    width: 46,
                    type: TekButtonType.outline,
                    onPressed: () {
                      context.popNavigator();
                      LanguageState.to.setCurrentLocale(S.delegate.supportedLocales[1]);
                    },
                    mainAxisSize: MainAxisSize.max,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: LanguageState.to.currentLocale.languageCode ==
                                S.delegate.supportedLocales[1].languageCode
                            ? TekColors().primary
                            : TekColors.greyOpacity04,
                        width: TekBorders.thin,
                      ),
                      borderRadius: TekCorners().mainCornerBorder,
                    ),
                    child: const TekAssetImage(
                      path: AppAssetImages.kingdom,
                      borderWidth: 0,
                      borderColor: Colors.transparent,
                      width: 30,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        offset: const Offset(-15, 45),
        hoverColor: context.theme.colorScheme.onBackground,
        child: const TekAssetImage(
          shape: BoxShape.circle,
          height: 40,
          width: 40,
          path: AppAssetImages.logo,
        ),
      );
}
