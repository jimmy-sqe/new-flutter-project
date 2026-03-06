import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

@module
abstract class ApiClientModule {
  @lazySingleton
  @Named('noneAuthDio')
  Dio noneAuthDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

    return dio;
  }

  @lazySingleton
  @Named('authDio')
  Dio authDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

    return dio;
  }
}

class RemoteExceptionMapper extends ExceptionMapper<RemoteException> {
  @override
  RemoteException map(Object? exception) {
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return const RemoteException(kind: RemoteExceptionKind.timeout);
        case DioExceptionType.cancel:
          return const RemoteException(
            kind: RemoteExceptionKind.cancellation,
          );
        case DioExceptionType.connectionError:
          return const RemoteException(kind: RemoteExceptionKind.noInternet);
        case DioExceptionType.badResponse:
          final statusCode = exception.response?.statusCode;

          return RemoteException(
            kind: RemoteExceptionKind.serverDefined,
            httpErrorCode: statusCode,
            serverError: ServerError(
              generalServerStatusCode: statusCode,
              generalMessage: exception.response?.statusMessage,
            ),
          );
        default:
          return const RemoteException(kind: RemoteExceptionKind.unknown);
      }
    }

    return const RemoteException(kind: RemoteExceptionKind.unknown);
  }
}
