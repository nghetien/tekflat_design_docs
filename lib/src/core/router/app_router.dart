import 'package:tekflat_design_docs/src/di/di.dart';
import 'package:go_router/go_router.dart';

import 'app_handle_routes.dart';

abstract class AppRouter {
  static AppRouter get to => AppInjector.injector<AppRouter>();

  AppRouter init();

  GoRouter get router;

  AppRouteData get currentRouteData;
}
