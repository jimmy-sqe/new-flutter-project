import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}

@LazySingleton()
class AppPreferences {
  AppPreferences(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  static const _keyAccessToken = 'access_token';
  static const _keyRefreshToken = 'refresh_token';
  static const _keyIsLoggedIn = 'is_logged_in';
  static const _keyIsDarkMode = 'is_dark_mode';
  static const _keyLanguageCode = 'language_code';

  // Access Token
  Future<bool> saveAccessToken(String token) {
    return _sharedPreferences.setString(_keyAccessToken, token);
  }

  String get accessToken =>
      _sharedPreferences.getString(_keyAccessToken) ?? '';

  // Refresh Token
  Future<bool> saveRefreshToken(String token) {
    return _sharedPreferences.setString(_keyRefreshToken, token);
  }

  String get refreshToken =>
      _sharedPreferences.getString(_keyRefreshToken) ?? '';

  // Login status
  Future<bool> saveIsLoggedIn({required bool isLoggedIn}) {
    return _sharedPreferences.setBool(_keyIsLoggedIn, isLoggedIn);
  }

  bool get isLoggedIn =>
      _sharedPreferences.getBool(_keyIsLoggedIn) ?? false;

  // Dark mode
  Future<bool> saveIsDarkMode({required bool isDarkMode}) {
    return _sharedPreferences.setBool(_keyIsDarkMode, isDarkMode);
  }

  bool get isDarkMode =>
      _sharedPreferences.getBool(_keyIsDarkMode) ?? false;

  // Language code
  Future<bool> saveLanguageCode(LanguageCode languageCode) {
    return _sharedPreferences.setString(
      _keyLanguageCode,
      languageCode.localeCode,
    );
  }

  LanguageCode get languageCode {
    final savedCode =
        _sharedPreferences.getString(_keyLanguageCode) ?? 'en';

    return LanguageCode.values.firstWhere(
      (code) => code.localeCode == savedCode,
      orElse: () => LanguageCode.en,
    );
  }

  // Clear data
  Future<void> clearCurrentUserData() async {
    await _sharedPreferences.remove(_keyAccessToken);
    await _sharedPreferences.remove(_keyRefreshToken);
    await _sharedPreferences.setBool(_keyIsLoggedIn, false);
  }
}
