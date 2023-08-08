import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class HomeRichComponentsWidget extends StatelessWidget {
  HomeRichComponentsWidget({super.key});

  final List<Map<String, String>> svgList = [
    {
      'title': S.current.alert,
      'svg': AppAssetImages.alert,
      'route': AppRoutes.dialogs.name,
    },
    {
      'title': S.current.button,
      'svg': AppAssetImages.button,
      'route': AppRoutes.button.name,
    },
    {
      'title': S.current.datatable,
      'svg': AppAssetImages.datatable,
      'route': AppRoutes.dataTable.name,
    },
    {
      'title': S.current.dropdown,
      'svg': AppAssetImages.dropdown,
      'route': AppRoutes.inputs.name,
    },
    {
      'title': S.current.form,
      'svg': AppAssetImages.form,
      'route': AppRoutes.forms.name,
    },
    {
      'title': S.current.notify,
      'svg': AppAssetImages.notify,
      'route': AppRoutes.toast.name,
    },
    {
      'title': S.current.responsive,
      'svg': AppAssetImages.responsive,
      'route': AppRoutes.responsive.name,
    },
    {
      'title': S.current.selector,
      'svg': AppAssetImages.selector,
      'route': AppRoutes.inputs.name,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, __) {
        return Column(
          children: [
            TekTypography(
              text: S.current.richComponents,
              type: TekTypographyType.level1,
              fontWeight: FontWeight.bold,
            ),
            TekVSpace.p8,
            Text(
              S.current.richComponentsDescription,
              style: TekTextStyles.titleMedium.copyWith(
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            TekVSpace.p32,
            _contentWidget(),
            TekVSpace.p32,
            TekButton(
              onPressed: () => context.goNamed(AppRoutes.overview.name),
              text: S.current.viewMore,
              type: TekButtonType.outline,
              mainAxisSize: MainAxisSize.min,
              size: TekButtonSize.large,
            ),
          ],
        );
      },
    );
  }

  Widget _contentWidget() {
    return TekListView<Map<String, String>>(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      items: svgList,
      numberOfItemsInRow: TekResponsiveConfig().screenDevice.isDesktop
          ? 4
          : TekResponsiveConfig().screenDevice.isTablet
              ? 2
              : 1,
      padding: EdgeInsets.symmetric(horizontal: TekSpacings().p32),
      spaceBetweenItemsInRow: TekSpacings().p32,
      separatorBuilder: (context, index) => TekVSpace.p32,
      itemBuilder: (context, index, item) {
        return TekButtonInkwell(
          onPressed: () => context.goNamed(item['route']!),
          child: TekCard(
            backgroundColor: context.theme.colorScheme.onBackground,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TekTypography(
                      text: item['title']!,
                      type: TekTypographyType.level4,
                      fontWeight: FontWeight.bold,
                    ),
                    TekHSpace.p8,
                    TekTags.warning(S.current.updating),
                  ],
                ),
                TekVSpace.mainSpace,
                TekCard(
                  width: double.infinity,
                  child: SvgPicture.asset(
                    item['svg']!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
