import 'package:shared/src/config/config.dart';
import 'package:shared/src/di/di.dart' as di;

class SharedConfig extends Config {
  SharedConfig._();

  static SharedConfig? _instance;

  static SharedConfig getInstance() {
    _instance ??= SharedConfig._();

    return _instance!;
  }

  @override
  Future<void> config() async {
    di.configureInjection();
  }
}
