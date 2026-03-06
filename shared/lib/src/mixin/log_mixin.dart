import 'package:shared/src/utils/log_utils.dart';

mixin LogMixin on Object {
  void logD(String message, {DateTime? time}) {
    Log.d('$runtimeType: $message', time: time);
  }

  void logE(
    String message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    Log.e(
      '$runtimeType: $message',
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
