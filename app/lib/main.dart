import 'dart:async';

import 'package:flutter/material.dart';
import 'package:initializer/initializer.dart';
import 'package:shared/shared.dart';

import 'package:app/app/my_app.dart';
import 'package:app/config/app_config.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();
  runApp(const MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  Log.e(
    'Uncaught error',
    error: error,
    stackTrace: stackTrace,
  );
}
