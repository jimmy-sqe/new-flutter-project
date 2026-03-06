import 'package:domain/src/di/di.dart' as di;
import 'package:shared/shared.dart';

class DomainConfig extends Config {
  DomainConfig._();

  static DomainConfig? _instance;

  static DomainConfig getInstance() {
    _instance ??= DomainConfig._();

    return _instance!;
  }

  @override
  Future<void> config() async {
    di.configureInjection();
  }
}
