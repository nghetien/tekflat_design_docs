import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

import '../model.dart';

class OverviewContentWidget extends StatelessWidget {
  const OverviewContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, __) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _showItemWidget(
            title: S.current.general,
            items: [
              OverViewItemModel(
                name: S.current.button,
                route: AppRoutes.button,
                assetImageLight: 'assets/docs_images/button_light.png',
                assetImageDark: 'assets/docs_images/button_dark.png',
              ),
              const OverViewItemModel(
                name: 'Typography',
                route: AppRoutes.typography,
                assetImageLight: 'assets/docs_images/title_light.png',
                assetImageDark: 'assets/docs_images/title_dark.png',
              ),
            ],
          ),
          TekVSpace.mainSpace,
          _showItemWidget(
            title: S.current.layout,
            items: [
              OverViewItemModel(
                name: S.current.responsive,
                route: AppRoutes.responsive,
                assetImageLight: 'assets/docs_images/responsive_light.png',
                assetImageDark: 'assets/docs_images/responsive_dark.png',
              ),
              OverViewItemModel(
                name: S.current.divider,
                route: AppRoutes.divider,
                assetImageLight: 'assets/docs_images/divider_light.png',
                assetImageDark: 'assets/docs_images/divider_dark.png',
              ),
              OverViewItemModel(
                name: S.current.spaces,
                route: AppRoutes.spaces,
                assetImageLight: 'assets/docs_images/spaces_light.png',
                assetImageDark: 'assets/docs_images/spaces_dark.png',
              ),
              OverViewItemModel(
                name: S.current.measureSize,
                route: AppRoutes.measureSize,
                assetImageLight: 'assets/docs_images/measure_size_light.png',
                assetImageDark: 'assets/docs_images/measure_size_dark.png',
              ),
            ],
          ),
          TekVSpace.mainSpace,
          _showItemWidget(
            title: S.current.navigation,
            items: [
              OverViewItemModel(
                name: S.current.popupMenuButton,
                route: AppRoutes.popupMenuButton,
                assetImageLight: 'assets/docs_images/popup_menu_button_light.png',
                assetImageDark: 'assets/docs_images/popup_menu_button_dark.png',
              ),
            ],
          ),
          TekVSpace.mainSpace,
          _showItemWidget(
            title: S.current.dataEntry,
            items: [
              OverViewItemModel(
                name: S.current.checkBoxes,
                route: AppRoutes.checkBoxes,
                assetImageLight: 'assets/docs_images/check_boxes_light.png',
                assetImageDark: 'assets/docs_images/check_boxes_dark.png',
              ),
              OverViewItemModel(
                name: S.current.inputs,
                route: AppRoutes.inputs,
                assetImageLight: 'assets/docs_images/input_light.png',
                assetImageDark: 'assets/docs_images/input_dark.png',
              ),
              OverViewItemModel(
                name: S.current.forms,
                route: AppRoutes.forms,
                assetImageLight: 'assets/docs_images/form_light.png',
                assetImageDark: 'assets/docs_images/form_dark.png',
              ),
            ],
          ),
          TekVSpace.mainSpace,
          _showItemWidget(
            title: S.current.dataDisplay,
            items: [
              OverViewItemModel(
                name: S.current.images,
                route: AppRoutes.images,
                assetImageLight: 'assets/docs_images/image_light.png',
                assetImageDark: 'assets/docs_images/image_dark.png',
              ),
              OverViewItemModel(
                name: S.current.badges,
                route: AppRoutes.badges,
                assetImageLight: 'assets/docs_images/badges_light.png',
                assetImageDark: 'assets/docs_images/badges_dark.png',
              ),
              OverViewItemModel(
                name: S.current.cards,
                route: AppRoutes.cards,
                assetImageLight: 'assets/docs_images/card_light.png',
                assetImageDark: 'assets/docs_images/card_dark.png',
              ),
              OverViewItemModel(
                name: S.current.listViewBuilder,
                route: AppRoutes.listViewBuilder,
                assetImageLight: 'assets/docs_images/list_view_light.png',
                assetImageDark: 'assets/docs_images/list_view_dark.png',
              ),
              OverViewItemModel(
                name: S.current.tags,
                route: AppRoutes.tags,
                assetImageLight: 'assets/docs_images/tag_light.png',
                assetImageDark: 'assets/docs_images/tag_dark.png',
              ),
              OverViewItemModel(
                name: S.current.dataTable,
                route: AppRoutes.dataTable,
                assetImageLight: 'assets/docs_images/data_table_light.png',
                assetImageDark: 'assets/docs_images/data_table_dark.png',
              ),
            ],
          ),
          TekVSpace.mainSpace,
          _showItemWidget(
            title: S.current.feedback,
            items: [
              OverViewItemModel(
                name: S.current.toast,
                route: AppRoutes.toast,
                assetImageLight: 'assets/docs_images/toast_light.png',
                assetImageDark: 'assets/docs_images/toast_dark.png',
              ),
              OverViewItemModel(
                name: S.current.dialogs,
                route: AppRoutes.dialogs,
                assetImageLight: 'assets/docs_images/dialog_light.png',
                assetImageDark: 'assets/docs_images/dialog_dark.png',
              ),
              OverViewItemModel(
                name: S.current.loading,
                route: AppRoutes.loading,
                assetImageLight: 'assets/docs_images/loading_light.png',
                assetImageDark: 'assets/docs_images/loading_dark.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showItemWidget({
    required List<OverViewItemModel> items,
    required String title,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: TekTextStyles.titleMedium.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          TekVSpace.mainSpace,
          TekListView<OverViewItemModel>(
            shrinkWrap: true,
            items: items,
            numberOfItemsInRow: TekResponsiveConfig().screenDevice.isDesktop
                ? 4
                : TekResponsiveConfig().screenDevice.isTablet
                    ? 2
                    : 1,
            itemBuilder: (context, index, item) => TekButtonGD(
              type: TekButtonGDType.customize,
              onPressed: () => context.goNamed(item.route.name),
              child: TekCard(
                height: 100,
                padding: EdgeInsets.zero,
                border: Border.all(
                  width: TekBorders.thin,
                  color: TekColors.greyOpacity04,
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: TekAssetImage(
                        borderColor: Colors.transparent,
                        path: ThemeState.to.isDarkMode ? item.assetImageDark : item.assetImageLight,
                        boxFit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        color: ThemeState.to.isDarkMode
                            ? TekColors().bgPrimaryThemeDark.withOpacity(0.4)
                            : TekColors().bgPrimaryThemeLight.withOpacity(0.7),
                        child: Center(
                          child: Text(
                            item.name,
                            style: TekTextStyles.titleLarge.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ThemeState.to.isDarkMode ? TekColors.white : TekColors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
