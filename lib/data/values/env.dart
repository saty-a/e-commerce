class Env {
  Env._privateConstructor();
  static late Map<String, dynamic> _env;
  static const String _environment = "environment";
  static const String _server = "server";
  static const String _url = "url";

  static setEnvironment(Environment env) {
    switch (env) {
      case Environment.staging:
        _env = staging;
        break;
      case Environment.prod:
        _env = prod;
        break;
    }
  }

  static const Map<String, dynamic> staging = {
    _environment: Environment.staging,
    _server: "BETA-PROD",
    _url: stagingUrl,
  };

  static const Map<String, dynamic> prod = {
    _environment: Environment.prod,
    _server: "PROD-PROD",
    _url: prodUrl,
  };

  static Environment get environment => _env[_environment];

  static String get server => _env[_server];

  static String get url => _env[_url];

  static const stagingUrl = "https://";
  static const prodUrl = "https://";
}

enum Environment { staging, prod }
