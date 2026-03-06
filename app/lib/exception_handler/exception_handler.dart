import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'package:app/exception_handler/exception_message_mapper.dart';

abstract class ExceptionHandlerListener {
  void onRefreshTokenFailed();
}

class ExceptionHandler {
  ExceptionHandler({
    required this.context,
    required this.listener,
  });

  final BuildContext context;
  final ExceptionHandlerListener listener;

  final ExceptionMessageMapper _exceptionMessageMapper =
      ExceptionMessageMapper();

  void handleException(
    AppExceptionWrapper appExceptionWrapper,
  ) {
    final message = appExceptionWrapper.overrideMessage ??
        _exceptionMessageMapper.map(appExceptionWrapper.appException);

    if (appExceptionWrapper.appException is RemoteException) {
      final remoteException =
          appExceptionWrapper.appException as RemoteException;
      if (remoteException.kind ==
          RemoteExceptionKind.refreshTokenFailed) {
        listener.onRefreshTokenFailed();

        return;
      }
    }

    _showErrorSnackBar(message, appExceptionWrapper);
  }

  void _showErrorSnackBar(
    String message,
    AppExceptionWrapper appExceptionWrapper,
  ) {
    if (!context.mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: DurationConstants.errorVisibleDuration,
        action: appExceptionWrapper.doOnRetry != null
            ? SnackBarAction(
                label: 'Retry',
                onPressed: () {
                  appExceptionWrapper.doOnRetry?.call();
                },
              )
            : null,
      ),
    );

    if (!appExceptionWrapper.exceptionCompleter.isCompleted) {
      appExceptionWrapper.exceptionCompleter.complete();
    }
  }
}
