import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/base/base_page_state.dart';
import 'package:app/ui/login/bloc/login_bloc.dart';
import 'package:app/ui/login/bloc/login_event.dart';
import 'package:app/ui/login/bloc/login_state.dart';
import 'package:app/ui/login/login_view.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, LoginBloc> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      bloc.add(
        LoginEvent.emailTextFieldChanged(
          email: _emailController.text,
        ),
      );
    });
    _passwordController.addListener(() {
      bloc.add(
        LoginEvent.passwordTextFieldChanged(
          password: _passwordController.text,
        ),
      );
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return LoginView(
          emailController: _emailController,
          passwordController: _passwordController,
          isLoginButtonEnabled: state.isLoginButtonEnabled,
          onLoginPressed: () {
            bloc.add(const LoginEvent.loginButtonPressed());
          },
          onGoogleLoginPressed: () {
            bloc.add(const LoginEvent.googleLoginButtonPressed());
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
