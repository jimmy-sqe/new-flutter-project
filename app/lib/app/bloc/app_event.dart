import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_event.dart';

part 'app_event.freezed.dart';

@freezed
class AppEvent extends BaseBlocEvent with _$AppEvent {
  const factory AppEvent.appInitiated() = AppInitiated;

  const factory AppEvent.appThemeChanged({
    required bool isDarkTheme,
  }) = AppThemeChanged;

  const factory AppEvent.appLanguageChanged({
    required LanguageCode languageCode,
  }) = AppLanguageChanged;

  const factory AppEvent.isLoggedInStatusChanged({
    required bool isLoggedIn,
  }) = IsLoggedInStatusChanged;
}
