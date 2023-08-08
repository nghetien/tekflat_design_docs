import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:tekflat_design_docs/src/di/di.dart';

import 'menu/menu.dart';

final GlobalKey globalKeyDrawerWeb = GlobalKey<DrawerWebState>();

class DrawerWeb extends StatefulWidget {
  const DrawerWeb({Key? key}) : super(key: key);

  @override
  DrawerWebState createState() => DrawerWebState();
}

class DrawerWebState extends State<DrawerWeb> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;
  final double _maxWidth = 256;
  final double _minWidth = 70;
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = ServicesDI.prefsService.getBool(AppKeys.drawerIsExpandedKey);
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = Tween<double>(
      begin: _isExpanded ? _maxWidth : _minWidth,
      end: _isExpanded ? _minWidth : _maxWidth,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _setIsExpanded(double value) {
    if (value >= _maxWidth - _minWidth) {
      _isExpanded = true;
    } else {
      _isExpanded = false;
    }
  }

  void toggle() {
    if (controller.isDismissed) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        _setIsExpanded(animation.value);
        return Container(
          width: animation.value,
          height: double.infinity,
          decoration: BoxDecoration(
            color: context.theme.appBarTheme.backgroundColor,
          ),
          child: AppMenu(
            key: AppKeys.appMenuKey.valueKey,
            menuIsExpanded: _isExpanded,
          ),
        );
      },
    );
  }
}
