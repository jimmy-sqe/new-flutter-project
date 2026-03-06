import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initializer/initializer.dart';

import 'package:app/base/bloc/app_bloc_observer.dart';
import 'package:app/di/di.dart' as di;

class AppConfig extends ApplicationConfig {
  AppConfig._();

  static AppConfig? _instance;

  static AppConfig getInstance() {
    _instance ??= AppConfig._();

    return _instance!;
  }

  @override
  Future<void> config() async {
    di.configureInjection();

    Bloc.observer = AppBlocObserver();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}
