import 'package:flutter/material.dart';

import 'screens_2/splash_screen.dart';
import 'screens_2/login_screen.dart';
import 'screens_2/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PurpleSpace',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6D28D9)),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },

      onGenerateRoute: (settings) {
        if (settings.name == '/checkLogin') {
          return MaterialPageRoute(
            builder: (_) =>
                isLoggedIn ? const DashboardScreen() : const LoginScreen(),
          );
        }
        return null;
      },
    );
  }
}
