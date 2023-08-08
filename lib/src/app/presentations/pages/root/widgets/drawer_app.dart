import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

import 'menu/menu.dart';

Drawer drawerApp(BuildContext context) => Drawer(
      backgroundColor: context.theme.appBarTheme.backgroundColor,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: AppMenu(
        key: AppKeys.appMenuKey.valueKey,
        menuIsExpanded: true,
      ),
    );
