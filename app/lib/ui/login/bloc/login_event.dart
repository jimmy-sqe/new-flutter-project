import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/base/bloc/base_bloc_event.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent extends BaseBlocEvent with _$LoginEvent {
  const factory LoginEvent.emailTextFieldChanged({
    required String email,
  }) = EmailTextFieldChanged;

  const factory LoginEvent.passwordTextFieldChanged({
    required String password,
  }) = PasswordTextFieldChanged;

  const factory LoginEvent.loginButtonPressed() = LoginButtonPressed;
}
