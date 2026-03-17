// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/src/repository/implementation/authentication_repository_impl.dart'
    as _i420;
import 'package:data/src/repository/implementation/repository_impl.dart'
    as _i707;
import 'package:data/src/repository/mapper/auth/user_data_mapper.dart' as _i514;
import 'package:data/src/repository/mapper/profile/user_profile_data_mapper.dart'
    as _i387;
import 'package:data/src/repository/source/api/app_api_client.dart' as _i527;
import 'package:data/src/repository/source/api/service/authentication_api_service.dart'
    as _i338;
import 'package:data/src/repository/source/api/service/profile_api_service.dart'
    as _i430;
import 'package:data/src/repository/source/preference/app_preferences.dart'
    as _i28;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final apiClientModule = _$ApiClientModule();
    gh.factory<_i514.UserDataMapper>(() => _i514.UserDataMapper());
    gh.factory<_i387.UserProfileDataMapper>(
        () => _i387.UserProfileDataMapper());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(
      () => apiClientModule.authDio(),
      instanceName: 'authDio',
    );
    gh.lazySingleton<_i361.Dio>(
      () => apiClientModule.noneAuthDio(),
      instanceName: 'noneAuthDio',
    );
    gh.lazySingleton<_i28.AppPreferences>(
        () => _i28.AppPreferences(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i494.Repository>(
        () => _i707.RepositoryImpl(gh<_i28.AppPreferences>()));
    gh.lazySingleton<_i430.ProfileApiService>(
        () => _i430.ProfileApiService(gh<_i361.Dio>(instanceName: 'authDio')));
    gh.lazySingleton<_i338.AuthenticationApiService>(() =>
        _i338.AuthenticationApiService(
            gh<_i361.Dio>(instanceName: 'noneAuthDio')));
    gh.lazySingleton<_i494.AuthenticationRepository>(
        () => _i420.AuthenticationRepositoryImpl(
              gh<_i338.AuthenticationApiService>(),
              gh<_i430.ProfileApiService>(),
              gh<_i387.UserProfileDataMapper>(),
              gh<_i28.AppPreferences>(),
            ));
    return this;
  }
}

class _$SharedPreferencesModule extends _i28.SharedPreferencesModule {}

class _$ApiClientModule extends _i527.ApiClientModule {}
