import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:resources/resources.dart';

import 'package:app/app/bloc/app_bloc.dart';
import 'package:app/app/bloc/app_event.dart';
import 'package:app/app/bloc/app_state.dart';
import 'package:app/navigation/routes/app_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;
  late final AppBloc _appBloc;

  @override
  void initState() {
    super.initState();
    _appRouter = GetIt.instance<AppRouter>();
    _appBloc = GetIt.instance<AppBloc>();
    _appBloc.add(const AppEvent.appInitiated());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _appBloc,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return MaterialApp.router(
                title: 'New Flutter App',
                theme: ThemeData(
                  colorSchemeSeed: Colors.blue,
                  useMaterial3: true,
                  brightness: Brightness.light,
                ),
                darkTheme: ThemeData(
                  colorSchemeSeed: Colors.blue,
                  useMaterial3: true,
                  brightness: Brightness.dark,
                ),
                themeMode: state.isDarkTheme
                    ? ThemeMode.dark
                    : ThemeMode.light,
                routerDelegate: _appRouter.delegate(
                  navigatorObservers: () => [],
                ),
                routeInformationParser:
                    _appRouter.defaultRouteParser(),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: Locale(state.languageCode.localeCode),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
