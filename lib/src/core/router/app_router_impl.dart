import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class AppRouterImpl extends AppRouter {
  late final AppHandleRoutes _appHandleRoutes;
  late final GoRouter _router;

  @override
  AppRouterImpl init() {
    _appHandleRoutes = AppHandleRoutes(
      routes: [
        CustomizeSingleGoRouter(
          route: AppRoutes.root,
          builder: (_, __) => const HomePage(),
        ),
        CustomizeSingleGoRouter(
          route: AppRoutes.home,
          builder: (_, __) => const HomePage(),
        ),
        CustomizeShellGoRouter(
          builder: (_, GoRouterState state, Widget child) => RootPage(
            key: AppKeys.getAppRouteKey(AppRoutes.root.name).valueKey,
            child: child,
          ),
          routes: [
            CustomizeSingleGoRouter(
              route: AppRoutes.overview,
              builder: (_, __) => OverviewPage(
                key: AppKeys.getAppRouteKey(AppRoutes.overview.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.button,
              builder: (_, __) => ButtonsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.button.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.typography,
              builder: (_, __) => TypographyPage(
                key: AppKeys.getAppRouteKey(AppRoutes.typography.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.responsive,
              builder: (_, __) => ResponsivePage(
                key: AppKeys.getAppRouteKey(AppRoutes.responsive.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.divider,
              builder: (_, __) => DividerPage(
                key: AppKeys.getAppRouteKey(AppRoutes.divider.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.lineDash,
              builder: (_, __) => LineDashPage(
                key: AppKeys.getAppRouteKey(AppRoutes.lineDash.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.spaces,
              builder: (_, __) => SpacesPage(
                key: AppKeys.getAppRouteKey(AppRoutes.spaces.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.measureSize,
              builder: (_, __) => TekMeasureSizePage(
                key: AppKeys.getAppRouteKey(AppRoutes.measureSize.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.popupMenuButton,
              builder: (_, __) => PopupMenuButtonPage(
                key: AppKeys.getAppRouteKey(AppRoutes.popupMenuButton.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.checkBoxes,
              builder: (_, __) => CheckBoxesPage(
                key: AppKeys.getAppRouteKey(AppRoutes.checkBoxes.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.inputs,
              builder: (_, __) => InputsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.inputs.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.forms,
              builder: (_, __) => FormsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.forms.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.images,
              builder: (_, __) => ImagesPage(
                key: AppKeys.getAppRouteKey(AppRoutes.images.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.badges,
              builder: (_, __) => BadgesPage(
                key: AppKeys.getAppRouteKey(AppRoutes.badges.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.cards,
              builder: (_, __) => CardsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.cards.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.listViewBuilder,
              builder: (_, __) => ListViewBuilderPage(
                key: AppKeys.getAppRouteKey(AppRoutes.listViewBuilder.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.tags,
              builder: (_, __) => TagsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.tags.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.dataTable,
              builder: (_, __) => DataTablePage(
                key: AppKeys.getAppRouteKey(AppRoutes.dataTable.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.toast,
              builder: (_, __) => ToastsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.toast.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.dialogs,
              builder: (_, __) => DialogsPage(
                key: AppKeys.getAppRouteKey(AppRoutes.dialogs.name).valueKey,
              ),
            ),
            CustomizeSingleGoRouter(
              route: AppRoutes.loading,
              builder: (_, __) => LoadingPage(
                key: AppKeys.getAppRouteKey(AppRoutes.loading.name).valueKey,
              ),
            ),
          ],
        ),
      ],
    ).init();
    _router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: AppRoutes.root.path,
      redirect: (context, state) {
        _appHandleRoutes.setCurrentRouteDataFromPath(state.matchedLocation);
        return null;
      },
      refreshListenable: Listenable.merge(
        [
          LanguageState.to,
          ThemeState.to,
        ],
      ),
      routes: _appHandleRoutes.routesBase,
      // errorPageBuilder: (context, state) {
      //   /// TODO handle error when code in page error
      //   return MaterialPage<void>(
      //     child: Center(
      //       child: Text(
      //         'errorPageBuilder',
      //         style: TekTextStyles.headline,
      //       ),
      //     ),
      //   );
      // },
      errorBuilder: (context, state) {
        /// TODO handle others error
        return Center(
          child: Text(
            'errorBuilder',
            style: TekTextStyles.headline,
          ),
        );
      },
    );
    return this;
  }

  @override
  GoRouter get router => _router;

  @override
  AppRouteData get currentRouteData => _appHandleRoutes.currentRouteData;
}
