import 'package:shared/src/model/shared_enum.dart';

class EnvConstants {
  const EnvConstants._();

  static late Flavor flavor;
  static late String baseUrl;

  static void init() {
    const flavorString = String.fromEnvironment('FLAVOR');
    switch (flavorString) {
      case 'staging':
        flavor = Flavor.staging;
        baseUrl = 'https://api-staging.example.com';
      case 'production':
        flavor = Flavor.production;
        baseUrl = 'https://api.example.com';
      default:
        flavor = Flavor.develop;
        baseUrl = 'https://api-dev.example.com';
    }
  }
}
