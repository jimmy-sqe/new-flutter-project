import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    required this.emailController,
    required this.passwordController,
    required this.isLoginButtonEnabled,
    required this.onLoginPressed,
    required this.onGoogleLoginPressed,
    super.key,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isLoginButtonEnabled;
  final VoidCallback onLoginPressed;
  final VoidCallback onGoogleLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                S.of(context).login,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              _EmailTextField(controller: emailController),
              const SizedBox(height: 16),
              _PasswordTextField(controller: passwordController),
              const SizedBox(height: 32),
              _LoginButton(
                isEnabled: isLoginButtonEnabled,
                onPressed: onLoginPressed,
              ),
              const SizedBox(height: 16),
              _GoogleLoginButton(onPressed: onGoogleLoginPressed),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: S.of(context).email,
        prefixIcon: const Icon(Icons.email_outlined),
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: true,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: S.of(context).password,
        prefixIcon: const Icon(Icons.lock_outlined),
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    required this.isEnabled,
    required this.onPressed,
  });

  final bool isEnabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        S.of(context).loginButton,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  const _GoogleLoginButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.g_mobiledata, size: 24),
      label: const Text(
        'Sign in with Google',
        style: TextStyle(fontSize: 16),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
