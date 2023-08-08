import 'package:get_it/get_it.dart';
import 'package:tekflat_design/tekflat_design.dart';

import 'app_injector.dart';

class ServicesDI {
  const ServicesDI._();

  static TekStreamService get appStream => AppInjector.injector<TekStreamService>();

  static TekPrefsService get prefsService => AppInjector.injector<TekPrefsService>();

  static Future init(GetIt injector) async {
    injector.registerLazySingleton<TekStreamService>(TekStreamServiceImpl.init);
    injector.registerSingleton<TekPrefsService>(await TekPrefsServiceImpl().init());
  }
}
