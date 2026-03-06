import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  const factory AppState({
    @Default(false) bool isDarkTheme,
    @Default(false) bool isLoggedIn,
    @Default(LanguageCode.en) LanguageCode languageCode,
  }) = _AppState;
}
