import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.palette_outlined),
              title: Text('Appearance'),
              subtitle: Text('Customize your app theme'),
            ),
            const Divider(),
            SwitchListTile(
              secondary: Icon(
                themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
              ),
              title: const Text('Dark Mode'),
              subtitle: Text(
                themeProvider.isDarkMode
                    ? 'Dark theme is enabled'
                    : 'Light theme is enabled',
              ),
              value: themeProvider.isDarkMode,
              onChanged: (_) {
                context.read<ThemeProvider>().toggleTheme();
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Your theme preference is shared across screens.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
