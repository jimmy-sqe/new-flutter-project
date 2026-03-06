// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/app/bloc/app_bloc.dart' as _i356;
import 'package:app/base/bloc/common/common_bloc.dart' as _i639;
import 'package:app/navigation/app_navigator_impl.dart' as _i101;
import 'package:app/navigation/routes/app_router.dart' as _i931;
import 'package:app/ui/home/bloc/home_bloc.dart' as _i87;
import 'package:app/ui/login/bloc/login_bloc.dart' as _i152;
import 'package:domain/domain.dart' as _i494;
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
    gh.factory<_i639.CommonBloc>(() => _i639.CommonBloc());
    gh.lazySingleton<_i931.AppRouter>(() => _i931.AppRouter());
    gh.factory<_i87.HomeBloc>(
        () => _i87.HomeBloc(gh<_i494.AuthenticationRepository>()));
    gh.lazySingleton<_i494.AppNavigator>(
        () => _i101.AppNavigatorImpl(gh<_i931.AppRouter>()));
    gh.lazySingleton<_i356.AppBloc>(
        () => _i356.AppBloc(gh<_i494.Repository>()));
    gh.factory<_i152.LoginBloc>(
        () => _i152.LoginBloc(gh<_i494.LoginUseCase>()));
    return this;
  }
}
