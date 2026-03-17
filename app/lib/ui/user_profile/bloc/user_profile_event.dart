import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_event.dart';

part 'user_profile_event.freezed.dart';

@freezed
class UserProfileEvent extends BaseBlocEvent with _$UserProfileEvent {
  const factory UserProfileEvent.userProfileInitiated() = UserProfileInitiated;
  const factory UserProfileEvent.logoutButtonPressed() = UserProfileLogoutButtonPressed;
}
