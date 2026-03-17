import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_state.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState extends BaseBlocState with _$UserProfileState {
  const factory UserProfileState({
    @Default(0) int userId,
    @Default('') String userName,
    @Default('') String userEmail,
  }) = _UserProfileState;
}
