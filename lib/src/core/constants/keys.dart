class AppKeys {
  const AppKeys._();

  static String themeModeKey = 'THEME_MODE_KEY';

  static String languageKey = 'LANGUAGE_KEY';

  static String drawerIsExpandedKey = 'DRAWER_IS_EXPANDED_KEY';

  static String getAppRouteKey(String value) => 'APP_ROUTE_KEY_$value';

  static String rootPageKey = 'ROOT_PAGE_KEY';

  static String appBarKey = 'APP_BAR_KEY';

  static String pathBarKey = 'PATH_BAR_KEY';

  static String appMenuKey = 'APP_MENU_KEY';

  static String appMenuContentKey = 'APP_MENU_CONTENT_KEY';

  static String appBreadcrumbKey = 'APP_BREADCRUMB_KEY';

  static String getTabBarViewKey(int index) => 'TAB_BAR_VIEW_KEY_$index';
}
