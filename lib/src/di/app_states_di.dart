import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:get_it/get_it.dart';

class AppStatesDI {
  const AppStatesDI._();

  static Future init(GetIt injector) async {
    injector.registerSingleton<LanguageState>(LanguageStateImpl().init());
    injector.registerSingleton<ThemeState>(ThemeStateImpl().init());
  }
}
