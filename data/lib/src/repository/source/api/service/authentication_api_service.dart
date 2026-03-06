import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthenticationApiService {
  AuthenticationApiService(@Named('noneAuthDio') this._dio);

  final Dio _dio;

  Future<Response<dynamic>> login({
    required String email,
    required String password,
  }) async {
    return _dio.post<dynamic>(
      '/api/v1/auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );
  }
}
