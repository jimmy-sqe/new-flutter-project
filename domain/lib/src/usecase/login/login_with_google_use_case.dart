import 'package:domain/src/repository/authentication_repository.dart';
import 'package:domain/src/usecase/base/future/base_future_use_case.dart';
import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:domain/src/usecase/base/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_with_google_use_case.freezed.dart';

@Injectable()
class LoginWithGoogleUseCase
    extends BaseFutureUseCase<LoginWithGoogleInput, LoginWithGoogleOutput> {
  LoginWithGoogleUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<LoginWithGoogleOutput> buildUseCase(LoginWithGoogleInput input) async {
    await _authenticationRepository.loginWithGoogle();

    return const LoginWithGoogleOutput();
  }
}

@freezed
class LoginWithGoogleInput extends BaseInput with _$LoginWithGoogleInput {
  const factory LoginWithGoogleInput() = _LoginWithGoogleInput;
}

@freezed
class LoginWithGoogleOutput extends BaseOutput with _$LoginWithGoogleOutput {
  const factory LoginWithGoogleOutput() = _LoginWithGoogleOutput;
}
