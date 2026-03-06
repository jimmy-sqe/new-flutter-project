import 'package:shared/src/exception/base/app_exception.dart';

enum RemoteExceptionKind {
  noInternet,
  network,
  serverDefined,
  serverUndefined,
  refreshTokenFailed,
  timeout,
  cancellation,
  unknown,
}

class RemoteException extends AppException {
  const RemoteException({
    required this.kind,
    this.httpErrorCode,
    this.serverError,
  }) : super(AppExceptionType.remote);

  final RemoteExceptionKind kind;
  final int? httpErrorCode;
  final ServerError? serverError;

  @override
  String toString() =>
      'RemoteException: kind=$kind, httpErrorCode=$httpErrorCode, '
      'serverError=$serverError';
}

class ServerError {
  const ServerError({
    this.generalServerStatusCode,
    this.generalServerErrorId,
    this.generalMessage,
  });

  final int? generalServerStatusCode;
  final String? generalServerErrorId;
  final String? generalMessage;

  @override
  String toString() =>
      'ServerError: statusCode=$generalServerStatusCode, '
      'errorId=$generalServerErrorId, message=$generalMessage';
}
