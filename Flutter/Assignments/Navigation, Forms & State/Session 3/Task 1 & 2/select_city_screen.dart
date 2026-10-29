import 'package:flutter/material.dart';
import 'weather_screen.dart';

class SelectCityScreen extends StatelessWidget {
  const SelectCityScreen({super.key});

  final List<Map<String, dynamic>> cities = const [
    {'name': 'Ahmedabad', 'temperature': 34},
    {'name': 'Surat', 'temperature': 32},
    {'name': 'Vadodara', 'temperature': 31},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select City'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final city = cities[index];

          return ListTile(
            leading: const Icon(Icons.location_city, color: Colors.blue),
            title: Text(city['name']),
            subtitle: Text('${city['temperature']}°C'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeatherScreen(
                    city: city['name'],
                    temperature: city['temperature'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
