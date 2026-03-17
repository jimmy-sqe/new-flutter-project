import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/ui/user_profile/bloc/user_profile_event.dart';
import 'package:app/ui/user_profile/bloc/user_profile_state.dart';

@Injectable()
class UserProfileBloc extends BaseBloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc(
    this._getUserProfileUseCase,
    this._authenticationRepository,
  ) : super(const UserProfileState()) {
    on<UserProfileInitiated>(_onUserProfileInitiated);
    on<UserProfileLogoutButtonPressed>(_onLogoutButtonPressed);
  }

  final GetUserProfileUseCase _getUserProfileUseCase;
  final AuthenticationRepository _authenticationRepository;

  Future<void> _onUserProfileInitiated(
    UserProfileInitiated event,
    Emitter<UserProfileState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        final output = await _getUserProfileUseCase.execute(
          const GetUserProfileInput(),
        );
        emit(state.copyWith(
          userId: output.userProfile.userId,
          userName: output.userProfile.name,
          userEmail: output.userProfile.email,
        ));
      },
    );
  }

  Future<void> _onLogoutButtonPressed(
    UserProfileLogoutButtonPressed event,
    Emitter<UserProfileState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        await _authenticationRepository.logout();
        navigator.replaceAll([const AppRouteInfo.login()]);
      },
    );
  }
}
