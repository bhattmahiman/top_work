import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  final String city;
  final int temperature;

  const WeatherScreen({
    super.key,
    required this.city,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wb_sunny, size: 90, color: Colors.orange),
            const SizedBox(height: 20),
            Text(
              'Weather in $city',
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              '$temperature°C',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Sunny', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
