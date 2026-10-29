import 'package:flutter/material.dart';
import 'package:my_music_theme/session_4/select_city_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCity = 'Select your city';

  Future<void> chooseCity() async {
    final city = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const SelectCityScreen()),
    );

    if (city != null && mounted) {
      setState(() {
        selectedCity = city;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: chooseCity,
          icon: const Icon(Icons.location_on),
          label: Text(selectedCity),
        ),
      ),
    );
  }
}
