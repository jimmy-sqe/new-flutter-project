// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/src/repository/authentication_repository.dart' as _i428;
import 'package:domain/src/usecase/login/login_use_case.dart' as _i895;
import 'package:domain/src/usecase/login/login_with_google_use_case.dart'
    as _i343;
import 'package:domain/src/usecase/profile/get_user_profile_use_case.dart'
    as _i299;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i895.LoginUseCase>(
        () => _i895.LoginUseCase(gh<_i428.AuthenticationRepository>()));
    gh.factory<_i299.GetUserProfileUseCase>(() =>
        _i299.GetUserProfileUseCase(gh<_i428.AuthenticationRepository>()));
    gh.factory<_i343.LoginWithGoogleUseCase>(() =>
        _i343.LoginWithGoogleUseCase(gh<_i428.AuthenticationRepository>()));
    return this;
  }
}
