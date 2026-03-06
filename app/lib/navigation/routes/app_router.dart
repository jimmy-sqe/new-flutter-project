import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'package:app/ui/home/home_page.dart';
import 'package:app/ui/login/login_page.dart';
import 'package:app/ui/main/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
@LazySingleton()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
          ],
        ),
      ];
}
