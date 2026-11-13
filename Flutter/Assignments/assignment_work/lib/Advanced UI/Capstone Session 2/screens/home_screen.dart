import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ServiceHub',
            style: theme.textTheme.titleLarge?.copyWith(
              color: colors.onPrimary,
            ),
          ),
          bottom: TabBar(
            indicatorColor: colors.onPrimary,
            labelColor: colors.onPrimary,
            unselectedLabelColor: colors.onPrimary.withValues(alpha: 0.65),
            tabs: const [
              Tab(icon: Icon(Icons.trending_up), text: 'Trending'),
              Tab(icon: Icon(Icons.favorite_outline), text: 'Favorites'),
              Tab(icon: Icon(Icons.location_on_outlined), text: 'Nearby'),
            ],
          ),
        ),

        // Navigation Drawer
        drawer: const AppDrawer(),

        // Tab Content
        body: const TabBarView(
          children: [
            TabContent(
              icon: Icons.trending_up,
              title: 'Trending Services',
              description: 'Explore the most popular services on ServiceHub.',
            ),
            TabContent(
              icon: Icons.favorite_outline,
              title: 'Your Favorites',
              description: 'All your favorite services will appear here.',
            ),
            TabContent(
              icon: Icons.location_on_outlined,
              title: 'Services Nearby',
              description: 'Discover services available around your location.',
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Tab Content Widget
class TabContent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const TabContent({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: colors.primary),

            const SizedBox(height: 20),

            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),

            const SizedBox(height: 12),

            Text(
              description,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colors.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
