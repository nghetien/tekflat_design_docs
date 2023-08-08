enum Flavor {
  dev,
  stage,
  live,
}

class FlavorMode {
  const FlavorMode({
    this.version = '1.0.0',
    required this.flavor,
    required this.baseUrl,
    this.services = const {},
  });

  final String version;
  final Flavor flavor;
  final String baseUrl;
  final Map<String, String> services;
}

class AppMode {
  AppMode._privateConstructor();

  static final AppMode _instance = AppMode._privateConstructor();

  factory AppMode() => _instance;

  FlavorMode _appMode = const FlavorMode(
    flavor: Flavor.dev,
    baseUrl: '',
    services: {},
  );

  FlavorMode get appMode => _appMode;

  void setAppMode(FlavorMode value) => _appMode = value;
}
