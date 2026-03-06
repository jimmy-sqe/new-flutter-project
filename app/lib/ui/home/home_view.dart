import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    required this.welcomeMessage,
    required this.onLogoutPressed,
    super.key,
  });

  final String welcomeMessage;
  final VoidCallback onLogoutPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: S.of(context).logout,
            onPressed: onLogoutPressed,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.home_rounded,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 24),
              Text(
                welcomeMessage,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'You are logged in successfully!',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
