import 'package:assignment_work/Advanced%20UI/Session_8/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const DashboardScreen(),
    );
  }
}
