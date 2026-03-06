import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:shared/src/config/log_config.dart';

class Log {
  const Log._();

  static void d(
    String message, {
    DateTime? time,
  }) {
    if (!LogConfig.enableGeneralLog) {
      return;
    }
    _log(message, time: time);
  }

  static void e(
    String message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void _log(
    String message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      developer.log(
        message,
        time: time ?? DateTime.now(),
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
