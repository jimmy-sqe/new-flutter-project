import 'package:domain/src/entity/enum/language_code.dart';

abstract class Repository {
  bool get isLoggedIn;

  bool get isDarkMode;

  LanguageCode get languageCode;

  Future<String> getAccessToken();

  Future<void> clearCurrentUserData();

  Future<bool> saveIsDarkMode({required bool isDarkMode});

  Future<bool> saveLanguageCode(LanguageCode languageCode);
}
