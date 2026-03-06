import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_state.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState extends BaseBlocState with _$HomeState {
  const factory HomeState({
    @Default('') String welcomeMessage,
  }) = _HomeState;
}
