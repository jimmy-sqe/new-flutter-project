import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

class ExceptionMessageMapper {
  String map(AppException appException) {
    switch (appException.appExceptionType) {
      case AppExceptionType.remote:
        return _mapRemoteException(appException as RemoteException);
      case AppExceptionType.validation:
        return _mapValidationException(
          appException as ValidationException,
        );
      case AppExceptionType.parse:
        return S.current.parseException;
      case AppExceptionType.uncaught:
        return S.current.unknownException;
    }
  }

  String _mapRemoteException(RemoteException exception) {
    switch (exception.kind) {
      case RemoteExceptionKind.noInternet:
        return S.current.noInternetException;
      case RemoteExceptionKind.timeout:
        return S.current.timeoutException;
      case RemoteExceptionKind.refreshTokenFailed:
        return S.current.tokenExpired;
      case RemoteExceptionKind.cancellation:
        return S.current.cancellationException;
      case RemoteExceptionKind.serverDefined:
        return exception.serverError?.generalMessage ??
            S.current.unknownException;
      default:
        return S.current.unknownException;
    }
  }

  String _mapValidationException(ValidationException exception) {
    switch (exception.kind) {
      case ValidationExceptionKind.invalidEmail:
        return S.current.invalidEmail;
      case ValidationExceptionKind.emptyEmail:
        return S.current.emptyEmail;
      case ValidationExceptionKind.invalidPassword:
        return S.current.invalidPassword;
    }
  }
}
