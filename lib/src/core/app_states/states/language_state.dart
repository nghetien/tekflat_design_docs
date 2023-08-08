import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/di/di.dart';

abstract class LanguageState extends ChangeNotifier {
  static LanguageState get to => AppInjector.injector<LanguageState>();

  LanguageState init();

  Locale get currentLocale;

  void setCurrentLocale(Locale locale);
}
