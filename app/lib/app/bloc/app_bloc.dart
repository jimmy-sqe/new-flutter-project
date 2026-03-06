import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/app/bloc/app_event.dart';
import 'package:app/app/bloc/app_state.dart';

@LazySingleton()
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(this._repository) : super(const AppState()) {
    on<AppInitiated>(_onAppInitiated);
    on<AppThemeChanged>(_onAppThemeChanged);
    on<AppLanguageChanged>(_onAppLanguageChanged);
    on<IsLoggedInStatusChanged>(_onIsLoggedInStatusChanged);
  }

  final Repository _repository;

  void _onAppInitiated(
    AppInitiated event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(
      isDarkTheme: _repository.isDarkMode,
      isLoggedIn: _repository.isLoggedIn,
      languageCode: _repository.languageCode,
    ));
  }

  Future<void> _onAppThemeChanged(
    AppThemeChanged event,
    Emitter<AppState> emit,
  ) async {
    await _repository.saveIsDarkMode(isDarkMode: event.isDarkTheme);
    emit(state.copyWith(isDarkTheme: event.isDarkTheme));
  }

  Future<void> _onAppLanguageChanged(
    AppLanguageChanged event,
    Emitter<AppState> emit,
  ) async {
    await _repository.saveLanguageCode(event.languageCode);
    emit(state.copyWith(languageCode: event.languageCode));
  }

  void _onIsLoggedInStatusChanged(
    IsLoggedInStatusChanged event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(isLoggedIn: event.isLoggedIn));
  }
}
