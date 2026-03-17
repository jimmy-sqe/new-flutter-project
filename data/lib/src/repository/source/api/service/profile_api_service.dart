import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProfileApiService {
  ProfileApiService(@Named('authDio') this._dio);

  final Dio _dio;

  Future<Response<dynamic>> getUserProfile() async {
    return _dio.get<dynamic>('/api/v1/users/me');
  }
}
