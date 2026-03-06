import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/ui/home/bloc/home_event.dart';
import 'package:app/ui/home/bloc/home_state.dart';

@Injectable()
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._authenticationRepository)
      : super(const HomeState()) {
    on<HomeInitiated>(_onHomeInitiated);
    on<LogoutButtonPressed>(_onLogoutButtonPressed);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onHomeInitiated(
    HomeInitiated event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      welcomeMessage: 'Welcome to New Flutter App!',
    ));
  }

  Future<void> _onLogoutButtonPressed(
    LogoutButtonPressed event,
    Emitter<HomeState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        await _authenticationRepository.logout();
        navigator.replaceAll([const AppRouteInfo.login()]);
      },
    );
  }
}
