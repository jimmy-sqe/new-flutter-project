import 'package:data/src/repository/model/auth/auth_response_data.dart';
import 'package:data/src/repository/source/api/app_api_client.dart';
import 'package:data/src/repository/source/api/service/authentication_api_service.dart';
import 'package:data/src/repository/source/preference/app_preferences.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl(
    this._authenticationApiService,
    this._appPreferences,
  );

  final AuthenticationApiService _authenticationApiService;
  final AppPreferences _appPreferences;

  final RemoteExceptionMapper _remoteExceptionMapper =
      RemoteExceptionMapper();

  @override
  Future<void> login(String email, String password) async {
    try {
      final response = await _authenticationApiService.login(
        email: email,
        password: password,
      );

      final responseData = AuthResponseData.fromJson(
        response.data as Map<String, dynamic>,
      );

      await _appPreferences.saveAccessToken(responseData.accessToken);
      await _appPreferences.saveRefreshToken(responseData.refreshToken);
      await _appPreferences.saveIsLoggedIn(isLoggedIn: true);
    } catch (error) {
      throw _remoteExceptionMapper.map(error);
    }
  }

  @override
  Future<void> logout() async {
    await _appPreferences.clearCurrentUserData();
  }
}
