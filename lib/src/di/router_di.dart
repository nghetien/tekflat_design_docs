import 'package:get_it/get_it.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class RouterDI {
  const RouterDI._();

  static Future init(GetIt injector) async {
    injector.registerSingleton<AppRouter>(AppRouterImpl().init());
  }
}
