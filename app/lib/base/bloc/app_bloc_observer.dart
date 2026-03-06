import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    if (LogConfig.enableBlocObserverLog) {
      Log.d('BlocObserver: onCreate -- ${bloc.runtimeType}');
    }
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    if (LogConfig.enableBlocObserverLog) {
      Log.d('BlocObserver: onClose -- ${bloc.runtimeType}');
    }
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (LogConfig.enableBlocObserverLog) {
      Log.d(
        'BlocObserver: onEvent -- ${bloc.runtimeType}, '
        'event: ${event.runtimeType}',
      );
    }
  }

  @override
  void onError(
    BlocBase<dynamic> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    super.onError(bloc, error, stackTrace);
    if (LogConfig.enableBlocObserverLog) {
      Log.e(
        'BlocObserver: onError -- ${bloc.runtimeType}',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    if (LogConfig.enableBlocObserverLog) {
      Log.d(
        'BlocObserver: onTransition -- ${bloc.runtimeType}, '
        'event: ${transition.event.runtimeType}',
      );
    }
  }
}
