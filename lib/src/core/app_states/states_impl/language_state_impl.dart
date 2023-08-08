import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:tekflat_design_docs/src/di/di.dart';

class LanguageStateImpl extends LanguageState {
  late Locale _locale;

  @override
  LanguageState init() {
    _locale = S.delegate.supportedLocales.firstWhereOrNull(
          (locale) => locale.languageCode == ServicesDI.prefsService.getString(AppKeys.languageKey),
        ) ??
        S.delegate.supportedLocales[0];
    return this;
  }

  @override
  void setCurrentLocale(Locale locale) async {
    if (_locale.languageCode == locale.languageCode) return;
    _locale = locale;
    await Future.wait(
      [
        S.load(_locale),
        ServicesDI.prefsService.setString(AppKeys.languageKey, locale.languageCode),
      ],
    );
    notifyListeners();
  }

  @override
  Locale get currentLocale => _locale;
}
