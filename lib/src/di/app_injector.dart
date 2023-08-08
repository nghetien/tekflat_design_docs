import 'package:get_it/get_it.dart';

import 'app_states_di.dart';
import 'repositories_di.dart';
import 'router_di.dart';
import 'services_di.dart';
import 'usecases_di.dart';

class AppInjector {
  AppInjector._();

  static final injector = GetIt.instance;

  static Future<void> initializeDependencies() async {
    await ServicesDI.init(injector);
    await AppStatesDI.init(injector);
    await RouterDI.init(injector);
    await RepositoriesDI.init(injector);
    await UseCasesDI.init(injector);
  }
}
