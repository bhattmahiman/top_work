import 'package:assignment_work/Advanced%20UI/Capstone%20Session%201/screens/explore_screen.dart';
import 'package:assignment_work/Advanced%20UI/Capstone%20Session%201/screens/home_screen.dart';
import 'package:assignment_work/Advanced%20UI/Capstone%20Session%201/screens/profile_screen.dart';
import 'package:assignment_work/Advanced%20UI/Capstone%20Session%201/widgets/bottom_nav_bar.dart';
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
        colorSchemeSeed: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
