import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/ui/login/bloc/login_event.dart';
import 'package:app/ui/login/bloc/login_state.dart';

@Injectable()
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase, this._loginWithGoogleUseCase)
      : super(const LoginState()) {
    on<EmailTextFieldChanged>(
      _onEmailTextFieldChanged,
      transformer: distinct(),
    );
    on<PasswordTextFieldChanged>(
      _onPasswordTextFieldChanged,
      transformer: distinct(),
    );
    on<LoginButtonPressed>(
      _onLoginButtonPressed,
      transformer: log(),
    );
    on<GoogleLoginButtonPressed>(
      _onGoogleLoginButtonPressed,
      transformer: log(),
    );
  }

  final LoginUseCase _loginUseCase;
  final LoginWithGoogleUseCase _loginWithGoogleUseCase;

  void _onEmailTextFieldChanged(
    EmailTextFieldChanged event,
    Emitter<LoginState> emit,
  ) {
    final isButtonEnabled =
        event.email.isNotEmpty && state.password.isNotEmpty;

    emit(state.copyWith(
      email: event.email,
      isLoginButtonEnabled: isButtonEnabled,
      onPageError: '',
    ));
  }

  void _onPasswordTextFieldChanged(
    PasswordTextFieldChanged event,
    Emitter<LoginState> emit,
  ) {
    final isButtonEnabled =
        state.email.isNotEmpty && event.password.isNotEmpty;

    emit(state.copyWith(
      password: event.password,
      isLoginButtonEnabled: isButtonEnabled,
      onPageError: '',
    ));
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        await _loginUseCase.execute(
          LoginInput(
            email: state.email,
            password: state.password,
          ),
        );

        navigator.replaceAll([const AppRouteInfo.main()]);
      },
      handleError: true,
      handleRetry: false,
    );
  }

  Future<void> _onGoogleLoginButtonPressed(
    GoogleLoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        await _loginWithGoogleUseCase.execute(const LoginWithGoogleInput());

        navigator.replaceAll([const AppRouteInfo.main()]);
      },
      handleError: true,
      handleRetry: false,
    );
  }
}
