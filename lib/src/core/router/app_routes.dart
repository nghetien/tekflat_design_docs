import 'package:collection/collection.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

enum AppRoutes {
  root('/'),
  home('/home'),
  overview('/docs/overview'),
  button('/docs/general/button'),
  title('/docs/general/title'),
  responsive('/docs/layout/responsive'),
  divider('/docs/layout/divider'),
  lineDash('/docs/layout/line-dash'),
  spaces('/docs/layout/spaces'),
  measureSize('/docs/layout/measure-size'),
  popupMenuButton('/docs/navigation/popup-menu-button'),
  checkBoxes('/docs/data-entry/check-boxes'),
  inputs('/docs/data-entry/inputs'),
  forms('/docs/data-entry/forms'),
  images('/docs/data-display/images'),
  badges('/docs/data-display/badges'),
  cards('/docs/data-display/cards'),
  listViewBuilder('/docs/data-display/list-view-builder'),
  tags('/docs/data-display/tags'),
  dataTable('/docs/data-display/data-table'),
  toast('/docs/feedback/toast'),
  dialogs('/docs/feedback/dialogs'),
  loading('/docs/feedback/loading'),
  empty('empty');

  final String path;

  const AppRoutes(this.path);

  String get nameOfRoute {
    switch (this) {
      case AppRoutes.root:
        return "";
      case AppRoutes.home:
        return S.current.home;
      case AppRoutes.overview:
        return S.current.overview;
      case AppRoutes.button:
        return S.current.button;
      case AppRoutes.title:
        return S.current.title;
      case AppRoutes.responsive:
        return S.current.responsive;
      case AppRoutes.divider:
        return S.current.divider;
      case AppRoutes.lineDash:
        return S.current.lineDash;
      case AppRoutes.spaces:
        return S.current.spaces;
      case AppRoutes.measureSize:
        return S.current.measureSize;
      case AppRoutes.popupMenuButton:
        return S.current.popupMenuButton;
      case AppRoutes.checkBoxes:
        return S.current.checkBoxes;
      case AppRoutes.inputs:
        return S.current.inputs;
      case AppRoutes.forms:
        return S.current.forms;
      case AppRoutes.images:
        return S.current.images;
      case AppRoutes.badges:
        return S.current.badges;
      case AppRoutes.cards:
        return S.current.cards;
      case AppRoutes.listViewBuilder:
        return S.current.listViewBuilder;
      case AppRoutes.tags:
        return S.current.tags;
      case AppRoutes.dataTable:
        return S.current.dataTable;
      case AppRoutes.toast:
        return S.current.toast;
      case AppRoutes.dialogs:
        return S.current.dialogs;
      case AppRoutes.loading:
        return S.current.loading;
      case AppRoutes.empty:
        return '';
    }
  }

  static AppRoutes? getRouteFromString(String name) =>
      AppRoutes.values.firstWhereOrNull((element) => element.name == name);
}
