import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/src/di/di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init();
