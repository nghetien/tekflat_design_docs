import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

class RootLayoutTablet extends StatelessWidget {
  const RootLayoutTablet({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        key: RootController.globalKeyRootPage,
        drawer: drawerApp(context),
        backgroundColor: context.theme.colorScheme.background,
        body: Column(
          children: <Widget>[
            CustomAppBar(key: AppKeys.appBarKey.valueKey),
            Expanded(
              child: child,
            ),
          ],
        ),
      );
}
