import 'package:data/src/di/di.dart' as di;
import 'package:shared/shared.dart';

class DataConfig extends Config {
  DataConfig._();

  static DataConfig? _instance;

  static DataConfig getInstance() {
    _instance ??= DataConfig._();

    return _instance!;
  }

  @override
  Future<void> config() async {
    di.configureInjection();
  }
}
