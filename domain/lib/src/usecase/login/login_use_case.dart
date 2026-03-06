import 'package:domain/src/repository/authentication_repository.dart';
import 'package:domain/src/usecase/base/future/base_future_use_case.dart';
import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:domain/src/usecase/base/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

part 'login_use_case.freezed.dart';

@Injectable()
class LoginUseCase extends BaseFutureUseCase<LoginInput, LoginOutput> {
  LoginUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<LoginOutput> buildUseCase(LoginInput input) async {
    if (input.email.isEmpty) {
      throw const ValidationException(
        kind: ValidationExceptionKind.emptyEmail,
      );
    }

    if (!ValidationUtils.isValidEmail(input.email)) {
      throw const ValidationException(
        kind: ValidationExceptionKind.invalidEmail,
      );
    }

    if (!ValidationUtils.isValidPassword(input.password)) {
      throw const ValidationException(
        kind: ValidationExceptionKind.invalidPassword,
      );
    }

    await _authenticationRepository.login(input.email, input.password);

    return const LoginOutput();
  }
}

@freezed
class LoginInput extends BaseInput with _$LoginInput {
  const factory LoginInput({
    required String email,
    required String password,
  }) = _LoginInput;
}

@freezed
class LoginOutput extends BaseOutput with _$LoginOutput {
  const factory LoginOutput() = _LoginOutput;
}
