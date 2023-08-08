import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class HomeDesignFrameworkWidget extends StatelessWidget {
  const HomeDesignFrameworkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, __) {
      return Container(
        decoration: BoxDecoration(
          color: context.theme.colorScheme.onBackground,
        ),
        child: Column(
          children: [
            TekVSpace.p32,
            TekTypography(
              text: S.current.designAndFrameworkHeader,
              type: TekTypographyType.level1,
              fontWeight: FontWeight.bold,
            ),
            TekVSpace.p8,
            Text(
              S.current.designAndFrameworkDescription,
              style: TekTextStyles.titleMedium.copyWith(
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            TekVSpace.p32,
            _uiWidget(context),
            TekVSpace.p32,
            TekVSpace.p32,
          ],
        ),
      );
    });
  }

  Widget _itemWidget(
    BuildContext context, {
    required String assetSvg,
    String? title,
    String? description,
    double? width,
  }) {
    return TekButtonInkwell(
      onPressed: () => context.goNamed(AppRoutes.overview.name),
      child: TekCard(
        width: width ?? 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(TekSpacings().mainSpacing),
              decoration: BoxDecoration(
                border: Border.all(
                  color: TekColors.greyOpacity04,
                  width: TekBorders.thin,
                ),
                borderRadius: TekCorners().mainCornerBorder,
              ),
              child: SvgPicture.asset(
                assetSvg,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
            TekVSpace.mainSpace,
            TekVSpace.p4,
            TekTypography(
              text: title ?? '',
              type: TekTypographyType.level3,
              fontWeight: FontWeight.bold,
            ),
            TekVSpace.p8,
            Text(description ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _uiWidget(BuildContext context) {
    if (!TekResponsiveConfig().screenDevice.isDesktop) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: TekSpacings().p32),
        child: Column(
          children: [
            _itemWidget(
              context,
              width: double.infinity,
              assetSvg: AppAssetImages.designValues,
              title: S.current.designValues,
              description: S.current.designValuesDescription,
            ),
            TekVSpace.p32,
            _itemWidget(
              context,
              width: double.infinity,
              assetSvg: AppAssetImages.library,
              title: S.current.componentsLibraries,
              description: S.current.componentsLibrariesDescription,
            ),
            TekVSpace.p32,
            _itemWidget(
              context,
              width: double.infinity,
              assetSvg: AppAssetImages.guide,
              title: S.current.designGuide,
              description: S.current.designGuideDescription,
            ),
          ],
        ),
      );
    }
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _itemWidget(
            context,
            assetSvg: AppAssetImages.designValues,
            title: S.current.designValues,
            description: S.current.designValuesDescription,
          ),
          TekHSpace.p32,
          _itemWidget(
            context,
            assetSvg: AppAssetImages.library,
            title: S.current.componentsLibraries,
            description: S.current.componentsLibrariesDescription,
          ),
          TekHSpace.p32,
          _itemWidget(
            context,
            assetSvg: AppAssetImages.guide,
            title: S.current.designGuide,
            description: S.current.designGuideDescription,
          ),
        ],
      ),
    );
  }
}
