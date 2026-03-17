import 'package:domain/src/entity/user/user.dart';
import 'package:domain/src/repository/authentication_repository.dart';
import 'package:domain/src/usecase/base/future/base_future_use_case.dart';
import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:domain/src/usecase/base/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_user_profile_use_case.freezed.dart';

@Injectable()
class GetUserProfileUseCase
    extends BaseFutureUseCase<GetUserProfileInput, GetUserProfileOutput> {
  GetUserProfileUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<GetUserProfileOutput> buildUseCase(GetUserProfileInput input) async {
    final userProfile = await _authenticationRepository.getUserProfile();

    return GetUserProfileOutput(userProfile: userProfile);
  }
}

@freezed
class GetUserProfileInput extends BaseInput with _$GetUserProfileInput {
  const factory GetUserProfileInput() = _GetUserProfileInput;
}

@freezed
class GetUserProfileOutput extends BaseOutput with _$GetUserProfileOutput {
  const factory GetUserProfileOutput({
    required User userProfile,
  }) = _GetUserProfileOutput;
}
