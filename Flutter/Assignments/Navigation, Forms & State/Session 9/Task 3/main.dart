import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_music_theme/session_9/login_provider.dart';
import 'package:my_music_theme/session_9/login_home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login State Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const LoginHomeScreen(),
    );
  }
}
