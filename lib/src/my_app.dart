import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';

import 'core/core.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageState>(
          create: (_) => LanguageState.to,
        ),
        ChangeNotifierProvider<ThemeState>(
          create: (_) => ThemeState.to,
        ),
      ],
      builder: (newContext, child) {
        Provider.of<LanguageState>(newContext, listen: true);
        Provider.of<ThemeState>(newContext, listen: true);
        return MaterialApp.router(
          title: 'Flatter Docs',
          builder: TekLoading.appLoading.initLoading,
          scaffoldMessengerKey: GlobalConfig.snackBarKey,
          debugShowCheckedModeBanner: true,
          routerConfig: AppRouter.to.router,
          theme: TekThemes.light,
          darkTheme: TekThemes.dark,
          themeMode: ThemeState.to.currentThemeMode,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: LanguageState.to.currentLocale,
        );
      },
    );
  }
}
