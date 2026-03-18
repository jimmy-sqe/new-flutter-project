import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    required this.emailController,
    required this.passwordController,
    required this.isLoginButtonEnabled,
    required this.onLoginPressed,
    required this.onGoogleLoginPressed,
    this.onSignUpPressed,
    this.onForgotPasswordPressed,
    super.key,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isLoginButtonEnabled;
  final VoidCallback onLoginPressed;
  final VoidCallback onGoogleLoginPressed;
  final VoidCallback? onSignUpPressed;
  final VoidCallback? onForgotPasswordPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _GradientBackground(
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _LoginCard(
                emailController: emailController,
                passwordController: passwordController,
                isLoginButtonEnabled: isLoginButtonEnabled,
                onLoginPressed: onLoginPressed,
                onGoogleLoginPressed: onGoogleLoginPressed,
                onSignUpPressed: onSignUpPressed,
                onForgotPasswordPressed: onForgotPasswordPressed,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientBackground extends StatelessWidget {
  const _GradientBackground({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.5, -1.0),
                end: Alignment(0.5, 1.0),
                colors: [
                  Color(0xFF5C17E5),
                  Color(0xFF9933D9),
                  Color(0xFFF2598C),
                ],
                stops: [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),
        const Positioned(
          top: -60,
          left: -60,
          child: _DecoCircle(diameter: 200, opacity: 0.08),
        ),
        const Positioned(
          bottom: -20,
          right: -40,
          child: _DecoCircle(diameter: 180, opacity: 0.06),
        ),
        const Positioned(
          bottom: 100,
          left: -40,
          child: _DecoCircle(diameter: 120, opacity: 0.05),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}

class _DecoCircle extends StatelessWidget {
  const _DecoCircle({
    required this.diameter,
    required this.opacity,
  });

  final double diameter;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: opacity),
      ),
    );
  }
}

class _LoginCard extends StatelessWidget {
  const _LoginCard({
    required this.emailController,
    required this.passwordController,
    required this.isLoginButtonEnabled,
    required this.onLoginPressed,
    required this.onGoogleLoginPressed,
    this.onSignUpPressed,
    this.onForgotPasswordPressed,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isLoginButtonEnabled;
  final VoidCallback onLoginPressed;
  final VoidCallback onGoogleLoginPressed;
  final VoidCallback? onSignUpPressed;
  final VoidCallback? onForgotPasswordPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 32,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _AvatarIcon(),
          const SizedBox(height: 14),
          const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1C1C2E),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Sign in to your account',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF73738C),
            ),
          ),
          const SizedBox(height: 24),
          _UsernameTextField(controller: emailController),
          const SizedBox(height: 16),
          _PasswordTextField(controller: passwordController),
          const SizedBox(height: 8),
          _ForgotPasswordLink(onPressed: onForgotPasswordPressed),
          const SizedBox(height: 16),
          _LoginButton(
            isEnabled: isLoginButtonEnabled,
            onPressed: onLoginPressed,
          ),
          const SizedBox(height: 20),
          const _OrDivider(),
          const SizedBox(height: 20),
          _GoogleLoginButton(onPressed: onGoogleLoginPressed),
          const SizedBox(height: 20),
          _SignUpRow(onPressed: onSignUpPressed),
        ],
      ),
    );
  }
}

class _AvatarIcon extends StatelessWidget {
  const _AvatarIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF5C17E5), Color(0xFFF2598C)],
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.lock_outline_rounded,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  const _UsernameTextField({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Username',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xFF33334D),
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          style: const TextStyle(fontSize: 14, color: Color(0xFF1C1C2E)),
          decoration: InputDecoration(
            hintText: 'Enter your username',
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF9999AD),
            ),
            filled: true,
            fillColor: const Color(0xFFF5F5FA),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFE0E0EB), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFE0E0EB), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF5C17E5), width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xFF33334D),
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          obscureText: true,
          textInputAction: TextInputAction.done,
          style: const TextStyle(fontSize: 14, color: Color(0xFF1C1C2E)),
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF9999AD),
            ),
            filled: true,
            fillColor: const Color(0xFFF5F5FA),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFE0E0EB), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFE0E0EB), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF5C17E5), width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}

class _ForgotPasswordLink extends StatelessWidget {
  const _ForgotPasswordLink({this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onPressed,
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5C17E5),
          ),
        ),
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
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: isEnabled
                ? const [Color(0xFF5C17E5), Color(0xFFBF40BF)]
                : const [Color(0xFFB0A0D0), Color(0xFFD0A0C0)],
          ),
          boxShadow: isEnabled
              ? const [
                  BoxShadow(
                    color: Color(0x595C17E5),
                    blurRadius: 16,
                    offset: Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: MaterialButton(
          onPressed: isEnabled ? onPressed : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'Log In',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _OrDivider extends StatelessWidget {
  const _OrDivider();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFE0E0EB), thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'or continue with',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF8C8C9E),
            ),
          ),
        ),
        Expanded(child: Divider(color: Color(0xFFE0E0EB), thickness: 1)),
      ],
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  const _GoogleLoginButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Color(0xFFE0E0EB), width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'G',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF4285F5),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Continue with Google',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF33334D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SignUpRow extends StatelessWidget {
  const _SignUpRow({this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xFF8C8C9E),
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF5C17E5),
            ),
          ),
        ),
      ],
    );
  }
}
