import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/base/bloc/common/common_event.dart';
import 'package:app/base/bloc/common/common_state.dart';

@Injectable()
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  CommonBloc() : super(const CommonState()) {
    on<ExceptionEmitted>(_onExceptionEmitted);
    on<LoadingVisibilityEmitted>(_onLoadingVisibilityEmitted);
    on<ForceLogoutButtonPressed>(_onForceLogoutButtonPressed);
  }

  void _onExceptionEmitted(
    ExceptionEmitted event,
    Emitter<CommonState> emit,
  ) {
    emit(state.copyWith(
      appExceptionWrapper: event.appExceptionWrapper,
    ));
  }

  void _onLoadingVisibilityEmitted(
    LoadingVisibilityEmitted event,
    Emitter<CommonState> emit,
  ) {
    final newLoadingCount = event.isLoading
        ? state.loadingCount + 1
        : state.loadingCount - 1;

    emit(state.copyWith(
      loadingCount: newLoadingCount,
      isLoading: newLoadingCount > 0,
    ));
  }

  Future<void> _onForceLogoutButtonPressed(
    ForceLogoutButtonPressed event,
    Emitter<CommonState> emit,
  ) async {
    logD('Force logout requested');
  }
}
