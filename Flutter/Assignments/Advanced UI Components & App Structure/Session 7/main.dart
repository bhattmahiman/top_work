// import 'package:assignment_work/Advanced%20UI/Session_3/playlist_screen.dart';
// import 'package:assignment_work/Advanced%20UI/Session_4/screens/teams_screen.dart';
// import 'package:assignment_work/Advanced%20UI/Session_6/playlist_screen.dart';
import 'package:assignment_work/Advanced%20UI/Session_7/screens/home_screen.dart';
import 'package:flutter/material.dart';
// import 'screens/teams_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IPL Teams App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
