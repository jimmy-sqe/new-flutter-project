import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_event.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent extends BaseBlocEvent with _$HomeEvent {
  const factory HomeEvent.homeInitiated() = HomeInitiated;
  const factory HomeEvent.logoutButtonPressed() = LogoutButtonPressed;
  const factory HomeEvent.viewProfileButtonPressed() = ViewProfileButtonPressed;
}
