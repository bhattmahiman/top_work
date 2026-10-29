import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  final String? city;
  final int? temperature;

  const WeatherScreen({super.key, this.city, this.temperature});

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
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.wb_sunny, size: 90, color: Colors.orange),
            const SizedBox(height: 20),

            Text(
              city?.trim().isNotEmpty == true
                  ? 'Weather in ${city!.trim()}'
                  : 'No city selected',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            Text(
              temperature != null
                  ? '$temperature°C'
                  : 'Temperature unavailable',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'Sunny',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
