import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController get to => Get.find<RootController>();
  static final GlobalKey globalKeyRootPage = GlobalKey<ScaffoldState>();

  final _state = RootState();

  RootState get state => _state;

  void initController() async {}
}
