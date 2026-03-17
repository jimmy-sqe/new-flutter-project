import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/base/base_page_state.dart';
import 'package:app/ui/user_profile/bloc/user_profile_bloc.dart';
import 'package:app/ui/user_profile/bloc/user_profile_event.dart';
import 'package:app/ui/user_profile/bloc/user_profile_state.dart';
import 'package:app/ui/user_profile/user_profile_view.dart';

@RoutePage()
class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState
    extends BasePageState<UserProfilePage, UserProfileBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const UserProfileEvent.userProfileInitiated());
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return UserProfileView(
          userName: state.userName,
          userEmail: state.userEmail,
          onLogoutPressed: () {
            bloc.add(const UserProfileEvent.logoutButtonPressed());
          },
        );
      },
    );
  }
}
