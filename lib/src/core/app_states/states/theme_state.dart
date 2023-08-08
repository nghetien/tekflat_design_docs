import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/di/di.dart';

abstract class ThemeState extends ChangeNotifier {
  static ThemeState get to => AppInjector.injector<ThemeState>();

  static final Map<ThemeMode, ThemeData> themes = {
    ThemeMode.light: TekThemes.light,
    ThemeMode.dark: TekThemes.dark,
  };

  ThemeState init();

  bool get isDarkMode;

  ThemeData get currentTheme;

  ThemeMode get currentThemeMode;

  void setCurrentTheme(ThemeMode appThemeMode);
}
