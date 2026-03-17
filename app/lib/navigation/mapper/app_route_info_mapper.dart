import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';

import 'package:app/navigation/base/base_route_info_mapper.dart';
import 'package:app/navigation/routes/app_router.dart';

class AppRouteInfoMapper extends BaseRouteInfoMapper {
  @override
  PageRouteInfo map(AppRouteInfo appRouteInfo) {
    return appRouteInfo.when(
      login: () => const LoginRoute(),
      main: () => const MainRoute(),
      home: () => const HomeRoute(),
      userProfile: () => const UserProfileRoute(),
    );
  }
}
