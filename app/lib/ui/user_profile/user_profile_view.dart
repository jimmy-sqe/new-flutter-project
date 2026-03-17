import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({
    required this.userName,
    required this.userEmail,
    required this.onLogoutPressed,
    super.key,
  });

  final String userName;
  final String userEmail;
  final VoidCallback onLogoutPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: onLogoutPressed,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _ProfileAvatar(),
              const SizedBox(height: 32),
              _ProfileInfoCard(
                userName: userName,
                userEmail: userEmail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 48,
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.person,
            size: 56,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _ProfileInfoCard extends StatelessWidget {
  const _ProfileInfoCard({
    required this.userName,
    required this.userEmail,
  });

  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _ProfileInfoRow(
              icon: Icons.person_outline,
              label: 'Name',
              value: userName,
            ),
            const Divider(),
            _ProfileInfoRow(
              icon: Icons.email_outlined,
              label: 'Email',
              value: userEmail,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
              ),
              Text(
                value.isNotEmpty ? value : '—',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
