import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/my_app.dart';

import 'runner/runner.dart';

void main() async {
  await GlobalConfig.initApp();
  runApp(const MyApp());
}
