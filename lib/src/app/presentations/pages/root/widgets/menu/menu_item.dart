import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class AppMenuItem extends StatefulWidget {
  const AppMenuItem({
    Key? key,
    required this.menuItemModel,
    required this.menuIsExpanded,
    this.backgroundColorDropdown,
    this.padding,
  }) : super(key: key);

  final MenuItemModel menuItemModel;
  final bool menuIsExpanded;
  final Color? backgroundColorDropdown;
  final EdgeInsets? padding;

  @override
  State<AppMenuItem> createState() => _AppMenuItemState();
}

class _AppMenuItemState extends State<AppMenuItem> {
  final double _widthDropDown = 200;
  final Offset _offsetDropDown = const Offset(208, 0);
  final double _heightButton = 48;

  bool _isShowDropdown(MenuItemModel menuItemModel) {
    bool isShow = _isMatchWithRoute(menuItemModel);
    if (isShow) return true;
    if (menuItemModel.emptyChildren) return isShow;
    for (MenuItemModel item in menuItemModel.children) {
      final result = _isShowDropdown(item);
      if (result) return true;
      isShow = isShow || result;
    }
    return isShow;
  }

  bool _isMatchWithRoute(MenuItemModel item) => item.route == AppRouter.to.currentRouteData.route;

  void _onClickToItem(
    BuildContext context, {
    required MenuItemModel item,
  }) {
    if (_isMatchWithRoute(item)) return;
    context.goNamed(item.route!.name);
    (RootController.globalKeyRootPage.currentState as ScaffoldState).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.menuIsExpanded) {
      return _menuItemCollapse(widget.menuItemModel);
    }
    if (widget.menuItemModel.emptyChildren) {
      return _menuItemExpanded(widget.menuItemModel);
    }
    return _menuItemWithChildren(widget.menuItemModel);
  }

  Widget _menuItemExpanded(MenuItemModel item) {
    Color? colorBg = context.theme.appBarTheme.backgroundColor;
    Color colorIconAndText = context.theme.textTheme.bodyMedium!.color!;
    if (_isMatchWithRoute(item)) {
      colorBg = context.theme.primaryColor;
      colorIconAndText = TekColors.white;
    }
    return TekButton(
      height: _heightButton,
      type: TekButtonType.primary,
      size: TekButtonSize.large,
      shape: TekOutlineBorder.none,
      background: colorBg,
      padding: _getPadding(),
      textStyle: TekTextStyles.body.copyWith(color: colorIconAndText),
      mainAxisAlignment: MainAxisAlignment.start,
      alignment: Alignment.centerLeft,
      spaceBetweenIconAndText: TekSpacings().p18,
      text: item.title,
      mainAxisSize: MainAxisSize.max,
      iconData: item.icon,
      iconColor: colorIconAndText,
      iconSize: TekSpacings().p18,
      onPressed: () => _onClickToItem(context, item: item),
    );
  }

  Widget _menuItemCollapse(MenuItemModel item) {
    Color? colorBg = context.theme.appBarTheme.backgroundColor;
    Color colorIconAndText = context.theme.textTheme.bodyMedium!.color!;
    final isShowDropdown = _isShowDropdown(item);
    if (_isMatchWithRoute(item) || isShowDropdown) {
      colorBg = context.theme.primaryColor;
      colorIconAndText = TekColors.white;
    }
    if (item.children.isNotEmpty) {
      return _buildPopupMenuButton(
        item: item,
        colorBg: colorBg,
        colorIconAndText: colorIconAndText,
        index: 1,
      );
    }
    return TekButton(
      type: TekButtonType.primary,
      size: TekButtonSize.large,
      height: _heightButton,
      shape: TekOutlineBorder.none,
      mainAxisSize: MainAxisSize.max,
      background: colorBg,
      padding: _getPadding(),
      iconData: item.icon,
      iconColor: colorIconAndText,
      iconSize: TekSpacings().p18,
      onPressed: () => _onClickToItem(context, item: item),
    );
  }

  Widget _menuItemWithChildren(MenuItemModel item) {
    final bool isShowDropdown = _isShowDropdown(item);
    final Color textAndIconDropdownColor =
        isShowDropdown ? context.theme.primaryColor : context.theme.textTheme.bodyMedium!.color!;
    return TekButtonDropdown(
      height: _heightButton,
      type: TekButtonType.primary,
      size: TekButtonSize.large,
      titleButton: _contentMenuItem(
        item: item,
        textAndIconDropdownColor: textAndIconDropdownColor,
      ),
      shape: TekOutlineBorder.none,
      textStyle: TekTextStyles.body.copyWith(color: context.theme.textTheme.bodyMedium!.color),
      padding: _getPadding(),
      isShowDropdown: isShowDropdown,
      colorIconDropdown: textAndIconDropdownColor,
      children: [
        for (MenuItemModel itemChild in item.children)
          itemChild.emptyChildren
              ? TekButtonDropdownModel(
                  child: Padding(
                    padding: EdgeInsets.only(left: TekSpacings().p18),
                    child: _contentMenuItem(
                      item: itemChild,
                      textAndIconDropdownColor: _getColorTextAndIcon(itemChild),
                    ),
                  ),
                  isButtonDropdown: false,
                  backgroundColor: _isMatchWithRoute(itemChild)
                      ? context.theme.primaryColor
                      : widget.backgroundColorDropdown ?? context.theme.appBarTheme.backgroundColor,
                  textAndIconColor: _getColorTextAndIcon(itemChild),
                )
              : TekButtonDropdownModel(
                  child: AppMenuItem(
                    menuItemModel: itemChild,
                    padding: _getPadding().copyWith(left: _getPadding().left + TekSpacings().p18),
                    menuIsExpanded: widget.menuIsExpanded,
                    backgroundColorDropdown: context.theme.scaffoldBackgroundColor,
                  ),
                  isButtonDropdown: true,
                ),
      ],
      onPressedItem: (index) => _onClickToItem(context, item: item.children[index]),
      colorWhenDropdown: widget.backgroundColorDropdown ?? context.theme.scaffoldBackgroundColor,
      background: widget.backgroundColorDropdown ?? context.theme.appBarTheme.backgroundColor,
    );
  }

  Widget _buildPopupMenuButton({
    required MenuItemModel item,
    Color? colorBg,
    required Color colorIconAndText,
    required int index,
  }) =>
      CustomPopupMenuButton(
        tooltip: '',
        backgroundIconColor: colorBg,
        icon: SizedBox(
          width: double.infinity,
          height: _heightButton,
          child: Icon(
            item.icon,
            color: colorIconAndText,
            size: TekSpacings().p18,
          ),
        ),
        iconPadding: EdgeInsets.zero,
        offset: const Offset(75, 0),
        itemBuilder: (context) {
          return item.children.map(
            (MenuItemModel element) {
              if (element.emptyChildren) {
                return _popupMenuItem(
                  item: element,
                  index: index,
                );
              }
              return PopupMenuItem(
                padding: EdgeInsets.zero,
                child: Container(
                  height: _heightButton,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: _buildPopupMenuEntry(
                    item: element,
                    index: index + 1,
                  ),
                ),
              );
            },
          ).toList();
        },
      );

  PopupMenuItem _popupMenuItem({
    required MenuItemModel item,
    required int index,
  }) {
    return PopupMenuItem(
      onTap: () {
        for (int i = 2; i <= index; i++) {
          // độ sâu của menu
          context.popNavigator();
        }
        _onClickToItem(context, item: item);
      },
      padding: EdgeInsets.zero,
      child: Container(
        height: _heightButton,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: TekSpacings().p18),
        color: _isMatchWithRoute(item) ? context.theme.primaryColor : Colors.transparent,
        child: _contentMenuItem(
          item: item,
          textAndIconDropdownColor: _isMatchWithRoute(item)
              ? TekColors.white
              : context.theme.textTheme.bodyMedium!.color!,
        ),
      ),
    );
  }

  Widget _buildPopupMenuEntry({
    required MenuItemModel item,
    required int index,
  }) {
    Color colorIconAndText = context.theme.textTheme.bodyMedium!.color!;
    final isShowDropdown = _isShowDropdown(item);
    if (isShowDropdown) colorIconAndText = context.theme.primaryColor;
    return CustomPopupMenuButton(
      tooltip: '',
      itemBuilder: (context) {
        return item.children.map(
          (MenuItemModel element) {
            if (element.emptyChildren) {
              return _popupMenuItem(
                item: element,
                index: index,
              );
            }
            return PopupMenuItem(
              value: element,
              padding: EdgeInsets.zero,
              child: SizedBox(
                height: _heightButton,
                width: _widthDropDown,
                child: _buildPopupMenuEntry(
                  item: element,
                  index: index + 1,
                ),
              ),
            );
          },
        ).toList();
      },
      offset: _offsetDropDown,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: TekSpacings().p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: _contentMenuItem(
                item: item,
                textAndIconDropdownColor: colorIconAndText,
              ),
            ),
            Icon(
              FontAwesomeIcons.chevronRight,
              color: colorIconAndText,
              size: TekSpacings().p18,
            ),
          ],
        ),
      ),
    );
  }

  Widget _contentMenuItem({
    required MenuItemModel item,
    required Color textAndIconDropdownColor,
  }) =>
      SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              item.icon,
              color: textAndIconDropdownColor,
              size: TekSpacings().p18,
            ),
            TekHSpace.p18,
            Expanded(
              child: Text(
                item.title!,
                style: TekTextStyles.body.copyWith(
                  color: textAndIconDropdownColor,
                ),
              ),
            ),
          ],
        ),
      );

  EdgeInsets _getPadding() =>
      widget.padding ??
      EdgeInsets.symmetric(
        horizontal: TekSpacings().p18,
      );

  Color _getColorTextAndIcon(MenuItemModel item) {
    if (_isMatchWithRoute(item)) return TekColors.white;
    return context.theme.textTheme.bodyMedium!.color!;
  }
}
