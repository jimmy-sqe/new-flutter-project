import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:app/navigation/mapper/app_popup_info_mapper.dart';
import 'package:app/navigation/mapper/app_route_info_mapper.dart';
import 'package:app/navigation/routes/app_router.dart';

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl extends AppNavigator {
  AppNavigatorImpl(this._appRouter);

  final AppRouter _appRouter;

  final AppRouteInfoMapper _routeInfoMapper = AppRouteInfoMapper();
  final AppPopupInfoMapper _popupInfoMapper = AppPopupInfoMapper();

  @override
  void push(AppRouteInfo appRouteInfo) {
    _appRouter.push(_routeInfoMapper.map(appRouteInfo));
  }

  @override
  void replace(AppRouteInfo appRouteInfo) {
    _appRouter.replace(_routeInfoMapper.map(appRouteInfo));
  }

  @override
  void replaceAll(List<AppRouteInfo> listAppRouteInfo) {
    _appRouter.replaceAll(
      _routeInfoMapper.mapList(listAppRouteInfo),
    );
  }

  @override
  void pop({Object? result}) {
    _appRouter.maybePop(result);
  }

  @override
  Future<T?> showDialog<T>(AppPopupInfo appPopupInfo) {
    final navigatorContext = _appRouter.navigatorKey.currentContext;
    if (navigatorContext == null) {
      return Future.value(null);
    }

    final dialogWidget = _popupInfoMapper.map(appPopupInfo);

    return showGeneralDialog<T>(
      context: navigatorContext,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation, secondaryAnimation) {
        return dialogWidget;
      },
    );
  }

  @override
  bool get canPopSelfOrChildren => _appRouter.canPop();
}
