import 'package:assignment_work/Advanced%20UI/Capstone%20Session%202/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ServiceHubApp());
}

class ServiceHubApp extends StatelessWidget {
  const ServiceHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ServiceHub',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
