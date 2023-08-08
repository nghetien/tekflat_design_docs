import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

class RootLayoutWeb extends StatelessWidget {
  const RootLayoutWeb({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        key: RootController.globalKeyRootPage,
        backgroundColor: context.theme.colorScheme.background,
        body: Row(
          children: <Widget>[
            DrawerWeb(
              key: globalKeyDrawerWeb,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  CustomAppBar(key: AppKeys.appBarKey.valueKey),
                  BreadcrumbsWidget(key: AppKeys.appBreadcrumbKey.valueKey),
                  Expanded(child: child),
                ],
              ),
            ),
          ],
        ),
      );
}
