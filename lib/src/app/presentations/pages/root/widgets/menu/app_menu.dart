import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

import 'menu_content.dart';
import 'menu_header.dart';
import 'menu_item_model.dart';

class AppMenu extends StatefulWidget {
  final bool menuIsExpanded;

  const AppMenu({
    Key? key,
    required this.menuIsExpanded,
  }) : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  List<MenuItemModel> _getListMenuItemModels() => [
        MenuItemModel(
          title: S.current.overview,
          icon: FontAwesomeIcons.rectangleList,
          route: AppRoutes.overview,
        ),
        MenuItemModel(
          title: S.current.general,
          icon: FontAwesomeIcons.gear,
          children: [
            MenuItemModel(
              title: S.current.button,
              icon: FontAwesomeIcons.computerMouse,
              route: AppRoutes.button,
            ),
            MenuItemModel(
              title: 'Typography',
              icon: FontAwesomeIcons.heading,
              route: AppRoutes.typography,
            ),
          ],
        ),
        MenuItemModel(
          title: S.current.layout,
          icon: FontAwesomeIcons.layerGroup,
          children: [
            MenuItemModel(
              title: S.current.responsive,
              icon: FontAwesomeIcons.windowMaximize,
              route: AppRoutes.responsive,
            ),
            MenuItemModel(
              title: S.current.divider,
              icon: FontAwesomeIcons.microsoft,
              route: AppRoutes.divider,
            ),
            MenuItemModel(
              title: S.current.lineDash,
              icon: FontAwesomeIcons.ellipsis,
              route: AppRoutes.lineDash,
            ),
            MenuItemModel(
              title: S.current.spaces,
              icon: FontAwesomeIcons.leftRight,
              route: AppRoutes.spaces,
            ),
            MenuItemModel(
              title: S.current.measureSize,
              icon: FontAwesomeIcons.clone,
              route: AppRoutes.measureSize,
            ),
          ],
        ),
        MenuItemModel(
          title: S.current.navigation,
          icon: FontAwesomeIcons.compass,
          children: [
            MenuItemModel(
              title: S.current.popupMenuButton,
              icon: FontAwesomeIcons.squareCaretDown,
              route: AppRoutes.popupMenuButton,
            ),
          ],
        ),
        MenuItemModel(
          title: S.current.dataTable,
          icon: FontAwesomeIcons.table,
          route: AppRoutes.dataTable,
        ),
        MenuItemModel(
          title: S.current.dataEntry,
          icon: FontAwesomeIcons.server,
          children: [
            MenuItemModel(
              title: S.current.checkBoxes,
              icon: FontAwesomeIcons.squareCheck,
              route: AppRoutes.checkBoxes,
            ),
            MenuItemModel(
              title: S.current.inputs,
              icon: FontAwesomeIcons.keyboard,
              route: AppRoutes.inputs,
            ),
            MenuItemModel(
              title: S.current.forms,
              icon: FontAwesomeIcons.listCheck,
              route: AppRoutes.forms,
            ),
          ],
        ),
        MenuItemModel(
          title: S.current.dataDisplay,
          icon: FontAwesomeIcons.display,
          children: [
            MenuItemModel(
              title: S.current.images,
              icon: FontAwesomeIcons.image,
              route: AppRoutes.images,
            ),
            MenuItemModel(
              title: S.current.badges,
              icon: FontAwesomeIcons.idBadge,
              route: AppRoutes.badges,
            ),
            MenuItemModel(
              title: S.current.cards,
              icon: FontAwesomeIcons.chalkboard,
              route: AppRoutes.cards,
            ),
            MenuItemModel(
              title: S.current.listViewBuilder,
              icon: FontAwesomeIcons.list,
              route: AppRoutes.listViewBuilder,
            ),
            MenuItemModel(
              title: S.current.tags,
              icon: FontAwesomeIcons.tag,
              route: AppRoutes.tags,
            ),
          ],
        ),
        MenuItemModel(
          title: S.current.feedback,
          icon: FontAwesomeIcons.message,
          children: [
            MenuItemModel(
              title: S.current.toast,
              icon: FontAwesomeIcons.comment,
              route: AppRoutes.toast,
            ),
            MenuItemModel(
              title: S.current.dialogs,
              icon: FontAwesomeIcons.noteSticky,
              route: AppRoutes.dialogs,
            ),
            MenuItemModel(
              title: S.current.loading,
              icon: FontAwesomeIcons.spinner,
              route: AppRoutes.loading,
            ),
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MenuHeader(
            menuIsExpanded: widget.menuIsExpanded,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: TekSpacings().p8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: TekColors.greyOpacity02,
                    width: TekBorders.thin,
                  ),
                  right: BorderSide(
                    color: TekColors.greyOpacity02,
                    width: TekBorders.thin,
                  ),
                ),
              ),
              child: MenuContent(
                key: AppKeys.appMenuContentKey.valueKey,
                menuIsExpanded: widget.menuIsExpanded,
                listMenuItems: _getListMenuItemModels(),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: TekColors.greyOpacity02,
                  width: TekBorders.thin,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(TekSpacings().p8),
              child: TekButton(
                width: double.infinity,
                onPressed: () {},
                padding: EdgeInsets.symmetric(
                  horizontal: TekSpacings().p12,
                  vertical: TekSpacings().p8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.star_rounded),
                    if (widget.menuIsExpanded)
                      Padding(
                        padding: EdgeInsets.only(
                          left: TekSpacings().p8,
                        ),
                        child: const Text('Up to Premium'),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
