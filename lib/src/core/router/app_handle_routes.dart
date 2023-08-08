import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

abstract class CustomizeGoRouter {}

class CustomizeSingleGoRouter extends CustomizeGoRouter {
  final AppRoutes route;
  final GoRouterWidgetBuilder builder;
  final GoRouterRedirect? redirect;
  final List<CustomizeGoRouter> routes;

  CustomizeSingleGoRouter({
    required this.route,
    required this.builder,
    this.redirect,
    this.routes = const [],
  });
}

class CustomizeShellGoRouter extends CustomizeGoRouter {
  final Widget Function(BuildContext context, GoRouterState state, Widget child) builder;
  final List<CustomizeGoRouter> routes;

  CustomizeShellGoRouter({
    required this.builder,
    this.routes = const [],
  });
}

class AppRouteData {
  final AppRoutes route;
  GoRouterState? state;

  AppRouteData({
    required this.route,
    this.state,
  });

  void setState(GoRouterState? state) => this.state = state;
}

/// Comment logic code for now

class AppHandleRoutes {
  final List<CustomizeGoRouter> routes;
  List<RouteBase> _routesBase = [];

  List<NodeModel<AppRouteData>> _allAppRouteData = [];

  AppRouteData? _currentRouteData;

  Map<AppRoutes, String> _mapAppRouteToPath = {};

  List<RouteBase> get routesBase => _routesBase;

  List<NodeModel<AppRouteData>> get allAppRouteData => _allAppRouteData;

  AppRouteData get currentRouteData => _currentRouteData!;

  Map<AppRoutes, String> get mapAppRouteToPath => _mapAppRouteToPath;

  void _setRoutesBase(List<RouteBase> routesBase) => _routesBase = routesBase;

  void _setAllAppRouteData(List<NodeModel<AppRouteData>> allAppRouteData) =>
      _allAppRouteData = allAppRouteData;

  void _setCurrentRouteData(AppRouteData routeData) => _currentRouteData = routeData;

  void _setMapAppRouteToPath(Map<AppRoutes, String> value) => _mapAppRouteToPath = value;

  AppHandleRoutes({required this.routes});

  AppHandleRoutes init() {
    _setAllAppRouteData(_getAppRouteData(routes, null));
    _setRoutesBase(_getRoutes(routes));
    _setMapAppRouteToPath(_getPath(allAppRouteData, ''));
    return this;
  }

  List<RouteBase> _getRoutes(List<CustomizeGoRouter> routes) {
    final List<RouteBase> temps = [];
    for (final route in routes) {
      if (route is CustomizeSingleGoRouter) {
        temps.add(
          GoRoute(
            path: route.route.path,
            name: route.route.name,
            builder: (context, state) {
              _setCurrentRouteData(
                AppRouteData(
                  route: route.route,
                  state: state,
                ),
              );
              return route.builder(context, state);
            },
            redirect: route.redirect,
            routes: _getRoutes(route.routes),
          ),
        );
      } else if (route is CustomizeShellGoRouter) {
        temps.add(
          ShellRoute(
            builder: route.builder,
            routes: _getRoutes(route.routes),
          ),
        );
      }
    }
    return temps;
  }

  List<NodeModel<AppRouteData>> _getAppRouteData(
    List<CustomizeGoRouter> routes,
    NodeModel<AppRouteData>? parentRoute,
  ) {
    List<NodeModel<AppRouteData>> temps = [];
    for (CustomizeGoRouter route in routes) {
      if (route is CustomizeSingleGoRouter) {
        final NodeModel<AppRouteData> node = NodeModel(
          data: AppRouteData(
            route: route.route,
          ),
          parent: parentRoute,
        );
        node.setChildren(_getAppRouteData(route.routes, node));
        temps.add(node);
      } else if (route is CustomizeShellGoRouter) {
        temps = [
          ...temps,
          ..._getAppRouteData(
            route.routes,
            parentRoute,
          ),
        ];
      }
    }
    return temps;
  }

  Map<AppRoutes, String> _getPath(List<NodeModel<AppRouteData>> list, String parentPath) {
    Map<AppRoutes, String> temps = {};
    for (NodeModel<AppRouteData> element in list) {
      final path = '${parentPath.isNotEmpty ? "$parentPath/" : ""}${element.data.route.path}';
      temps[element.data.route] = path;
      if (element.children.isNotEmpty) {
        temps.addAll(_getPath(element.children, path));
      }
    }
    return temps;
  }

  void setCurrentRouteDataFromPath(String path) {
    final AppRoutes route = _mapAppRouteToPath.entries.firstWhere(
      (element) {
        if (element.key.path.contains(":")) {
          final List<String> splitPath = path.split("/");
          final List<String> splitRoute = element.key.path.split("/");
          if (splitPath.length == splitRoute.length) {
            for (int i = 0; i < splitPath.length; i++) {
              if (splitRoute[i].contains(":")) {
                continue;
              }
              if (splitPath[i] != splitRoute[i]) {
                return false;
              }
            }
            return true;
          }
          return false;
        }
        return element.value == path;
      },
      orElse: () => const MapEntry(
        AppRoutes.empty,
        '',
      ),
    ).key;
    if (route != AppRoutes.empty) {
      _setCurrentRouteData(
        AppRouteData(
          route: route,
        ),
      );
    }
  }
}
