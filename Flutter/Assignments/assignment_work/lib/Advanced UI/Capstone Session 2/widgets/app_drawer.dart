import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textStyles = theme.textTheme;

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [colors.primary, colors.tertiary],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundColor: colors.onPrimary,
                    backgroundImage: const NetworkImage(
                      'https://i.pravatar.cc/150?img=12',
                    ),
                    onBackgroundImageError: (_, __) {},
                    child: const Icon(Icons.person),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    'Mahiman',
                    style: textStyles.titleLarge?.copyWith(
                      color: colors.onPrimary,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'mahiman@example.com',
                    style: textStyles.bodyMedium?.copyWith(
                      color: colors.onPrimary,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Drawer Menu Items
            _drawerItem(
              context,
              icon: Icons.shopping_bag_outlined,
              title: 'My Orders',
            ),

            _drawerItem(
              context,
              icon: Icons.favorite_outline,
              title: 'Favorites',
            ),

            _drawerItem(
              context,
              icon: Icons.settings_outlined,
              title: 'Settings',
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'ServiceHub v1.0.0',
                style: textStyles.bodySmall?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
  }) {
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Icon(icon, color: theme.colorScheme.primary),
      title: Text(title, style: theme.textTheme.titleMedium),
      onTap: () {
        Navigator.pop(context);

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$title selected')));
      },
    );
  }
}
