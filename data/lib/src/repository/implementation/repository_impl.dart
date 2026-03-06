import 'package:data/src/repository/source/preference/app_preferences.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(this._appPreferences);

  final AppPreferences _appPreferences;

  @override
  bool get isLoggedIn => _appPreferences.isLoggedIn;

  @override
  bool get isDarkMode => _appPreferences.isDarkMode;

  @override
  LanguageCode get languageCode => _appPreferences.languageCode;

  @override
  Future<String> getAccessToken() async {
    return _appPreferences.accessToken;
  }

  @override
  Future<void> clearCurrentUserData() async {
    await _appPreferences.clearCurrentUserData();
  }

  @override
  Future<bool> saveIsDarkMode({required bool isDarkMode}) {
    return _appPreferences.saveIsDarkMode(isDarkMode: isDarkMode);
  }

  @override
  Future<bool> saveLanguageCode(LanguageCode languageCode) {
    return _appPreferences.saveLanguageCode(languageCode);
  }
}
