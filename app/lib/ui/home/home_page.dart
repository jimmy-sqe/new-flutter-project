import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/base/base_page_state.dart';
import 'package:app/ui/home/bloc/home_bloc.dart';
import 'package:app/ui/home/bloc/home_event.dart';
import 'package:app/ui/home/bloc/home_state.dart';
import 'package:app/ui/home/home_view.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const HomeEvent.homeInitiated());
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return HomeView(
          welcomeMessage: state.welcomeMessage,
          onLogoutPressed: () {
            bloc.add(const HomeEvent.logoutButtonPressed());
          },
        );
      },
    );
  }
}
