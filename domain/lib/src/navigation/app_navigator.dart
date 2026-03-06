import 'package:domain/src/navigation/app_popup_info.dart';
import 'package:domain/src/navigation/app_route_info.dart';

abstract class AppNavigator {
  void push(AppRouteInfo appRouteInfo);

  void replace(AppRouteInfo appRouteInfo);

  void replaceAll(List<AppRouteInfo> listAppRouteInfo);

  void pop({Object? result});

  Future<T?> showDialog<T>(AppPopupInfo appPopupInfo);

  bool get canPopSelfOrChildren;
}
