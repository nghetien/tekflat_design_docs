import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.appBarTheme.backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: TekColors().primaryOpacity01,
            width: TekBorders.thin,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          TekSpacings().p4,
          TekSpacings().p4,
          TekSpacings().p18,
          TekSpacings().p4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TekButtonGD(
              type: TekButtonGDType.customize,
              onPressed: () => context.goNamed(AppRoutes.home.name),
              child: Row(
                children: <Widget>[
                  const TekAssetImage(
                    width: 60,
                    height: 60,
                    path: AppAssetImages.logo,
                    borderWidth: 0,
                    borderColor: Colors.transparent,
                    borderRadius: BorderRadius.zero,
                    boxFit: BoxFit.fill,
                  ),
                  Text(
                    'Teko Flat Design',
                    style: TekTextStyles.titleLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: TekColors().primary,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                TekButtonGD(
                  type: TekButtonGDType.customize,
                  onPressed: () => context.goNamed(AppRoutes.overview.name),
                  child: Text(
                    S.current.document,
                    style: TekTextStyles.titleMedium.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TekHSpace.mainSpace,
                TekButtonGD(
                  type: TekButtonGDType.customize,
                  onPressed: () => context.goNamed(AppRoutes.overview.name),
                  child: Text(
                    'Pub.dev',
                    style: TekTextStyles.titleMedium.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TekHSpace.mainSpace,
                TekButtonGD(
                  type: TekButtonGDType.customize,
                  onPressed: () {
                    htmlWindowOpen(
                      'https://github.com/nghetien',
                      'Github',
                    );
                  },
                  child: const FaIcon(FontAwesomeIcons.github),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
