import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';

import 'package:app/base/bloc/base_bloc_event.dart';
import 'package:app/base/bloc/base_bloc_state.dart';
import 'package:app/base/bloc/common/common_bloc.dart';
import 'package:app/base/bloc/common/common_event.dart';
import 'package:app/base/bloc/mixin/event_transformer_mixin.dart';
import 'package:app/exception_handler/exception_handler.dart';
import 'package:app/exception_handler/exception_message_mapper.dart';

abstract class BaseBlocDelegate<E extends BaseBlocEvent,
    S extends BaseBlocState> extends Bloc<E, S> {
  BaseBlocDelegate(super.initialState);

  late AppNavigator navigator;
  late CommonBloc commonBloc;
  late ExceptionHandler exceptionHandler;
  late ExceptionMessageMapper exceptionMessageMapper;
  final DisposeBag disposeBag = DisposeBag();

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    }
  }

  void showLoading() {
    commonBloc.add(
      const CommonEvent.loadingVisibilityEmitted(isLoading: true),
    );
  }

  void hideLoading() {
    commonBloc.add(
      const CommonEvent.loadingVisibilityEmitted(isLoading: false),
    );
  }

  void addException(AppExceptionWrapper appExceptionWrapper) {
    commonBloc.add(
      CommonEvent.exceptionEmitted(
        appExceptionWrapper: appExceptionWrapper,
      ),
    );
  }

  Future<void> runBlocCatching({
    required Future<void> Function() action,
    bool handleLoading = true,
    bool handleError = true,
    bool handleRetry = true,
    String? overrideErrorMessage,
  }) async {
    try {
      if (handleLoading) {
        showLoading();
      }
      await action.call();
    } catch (error) {
      if (handleError) {
        addException(
          AppExceptionWrapper(
            appException: error is AppException
                ? error
                : AppUncaughtException(error),
            doOnRetry: handleRetry ? () => action.call() : null,
            overrideMessage: overrideErrorMessage,
          ),
        );
      }
    } finally {
      if (handleLoading) {
        hideLoading();
      }
    }
  }

  @override
  Future<void> close() {
    disposeBag.dispose();

    return super.close();
  }
}

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> with EventTransformerMixin, LogMixin {
  BaseBloc(super.initialState);
}

class AppUncaughtException extends AppException {
  const AppUncaughtException(this.rootError)
      : super(AppExceptionType.uncaught);

  final Object? rootError;

  @override
  String toString() => 'AppUncaughtException: rootError=$rootError';
}
