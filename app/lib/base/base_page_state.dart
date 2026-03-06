import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

import 'package:app/app/bloc/app_bloc.dart';
import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/base/bloc/base_bloc_event.dart';
import 'package:app/base/bloc/base_bloc_state.dart';
import 'package:app/base/bloc/common/common_bloc.dart';
import 'package:app/base/bloc/common/common_state.dart';
import 'package:app/exception_handler/exception_handler.dart';
import 'package:app/exception_handler/exception_message_mapper.dart';

abstract class BasePageStateDelegate<T extends StatefulWidget,
        B extends BaseBloc<BaseBlocEvent, BaseBlocState>> extends State<T>
    implements ExceptionHandlerListener {
  late final AppNavigator navigator;
  late final AppBloc appBloc;
  late final B bloc;
  late final CommonBloc commonBloc;
  late final ExceptionHandler exceptionHandler;
  late final ExceptionMessageMapper exceptionMessageMapper;
  final DisposeBag disposeBag = DisposeBag();

  bool get isAppWidget => false;

  @override
  void initState() {
    super.initState();

    final getItInstance = GetIt.instance;

    navigator = getItInstance<AppNavigator>();
    appBloc = getItInstance<AppBloc>();
    bloc = getItInstance<B>();
    commonBloc = CommonBloc();

    exceptionMessageMapper = ExceptionMessageMapper();

    bloc.navigator = navigator;
    bloc.commonBloc = commonBloc;
    bloc.exceptionMessageMapper = exceptionMessageMapper;

    commonBloc.navigator = navigator;
    commonBloc.commonBloc = commonBloc;
    commonBloc.exceptionMessageMapper = exceptionMessageMapper;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    exceptionHandler = ExceptionHandler(
      context: context,
      listener: this,
    );
    bloc.exceptionHandler = exceptionHandler;
    commonBloc.exceptionHandler = exceptionHandler;
  }

  @override
  void onRefreshTokenFailed() {
    navigator.replaceAll([const AppRouteInfo.login()]);
  }

  Widget buildPage(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (isAppWidget) {
      return buildPage(context);
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<B>.value(value: bloc),
        BlocProvider<CommonBloc>.value(value: commonBloc),
      ],
      child: BlocListener<CommonBloc, CommonState>(
        listenWhen: (previous, current) =>
            previous.appExceptionWrapper !=
            current.appExceptionWrapper,
        listener: (context, state) {
          if (state.appExceptionWrapper != null) {
            exceptionHandler.handleException(
              state.appExceptionWrapper!,
            );
          }
        },
        child: Stack(
          children: [
            buildPage(context),
            BlocBuilder<CommonBloc, CommonState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading,
              builder: (context, state) {
                if (!state.isLoading) {
                  return const SizedBox.shrink();
                }

                return Container(
                  color: Colors.black26,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposeBag.dispose();
    bloc.close();
    commonBloc.close();
    super.dispose();
  }
}

abstract class BasePageState<T extends StatefulWidget,
        B extends BaseBloc<BaseBlocEvent, BaseBlocState>>
    extends BasePageStateDelegate<T, B> with LogMixin {}
