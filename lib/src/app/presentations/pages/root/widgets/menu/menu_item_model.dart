import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class MenuItemModel {
  final String? title;
  final IconData? icon;
  final AppRoutes? route;
  final List<MenuItemModel> children;

  MenuItemModel({
    this.title,
    this.icon,
    this.route,
    this.children = const [],
  });

  bool get emptyChildren => children.isEmpty;
}
