import 'dart:async';

import 'package:shared/src/exception/base/app_exception.dart';

class AppExceptionWrapper {
  AppExceptionWrapper({
    required this.appException,
    this.doOnRetry,
    this.overrideMessage,
  });

  final AppException appException;
  final Future<void> Function()? doOnRetry;
  final String? overrideMessage;
  final Completer<void> exceptionCompleter = Completer<void>();
}
