import 'package:tekflat_design/tekflat_design.dart';
import 'package:collection/collection.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:tekflat_design_docs/src/di/di.dart';
import 'package:flutter/material.dart';

class ThemeStateImpl extends ThemeState {
  late MapEntry<ThemeMode, ThemeData> _currentTheme;

  @override
  ThemeState init() {
    _currentTheme = ThemeState.themes.entries.firstWhereOrNull(
          (element) =>
              element.key.toString() == ServicesDI.prefsService.getString(AppKeys.themeModeKey),
        ) ??
        ThemeState.themes.entries.first;
    return this;
  }

  @override
  bool get isDarkMode => _currentTheme.key == ThemeMode.dark;

  @override
  ThemeData get currentTheme => _currentTheme.value;

  @override
  ThemeMode get currentThemeMode => _currentTheme.key;

  @override
  void setCurrentTheme(ThemeMode appThemeMode) {
    if (appThemeMode == _currentTheme.key) return;
    switch (appThemeMode) {
      case ThemeMode.light:
        _currentTheme = MapEntry(ThemeMode.light, TekThemes.light);
        break;
      case ThemeMode.dark:
        _currentTheme = MapEntry(ThemeMode.dark, TekThemes.dark);
        break;
      case ThemeMode.system:
        _currentTheme = MapEntry(ThemeMode.light, TekThemes.light);
        break;
    }
    ServicesDI.prefsService.setString(AppKeys.themeModeKey, appThemeMode.toString());
    notifyListeners();
  }
}
