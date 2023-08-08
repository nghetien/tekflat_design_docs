import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPage extends StatefulWidget {
  final Widget child;

  const RootPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final controller = Get.put<RootController>(RootController());

  @override
  void initState() {
    controller.initController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => TekResponsive.appResBuilder(
        TekResponsive.resBuilder(
          desktop: RootLayoutWeb(child: widget.child),
          tablet: RootLayoutTablet(child: widget.child),
          mobile: RootLayoutMobile(child: widget.child),
        ),
        key: AppKeys.rootPageKey.valueKey,
      );
}
