import 'package:flutter/material.dart';

class SelectCityScreen extends StatelessWidget {
  const SelectCityScreen({super.key});

  final List<String> cities = const [
    'Ahmedabad',
    'Surat',
    'Vadodara',
    'Mumbai',
    'Pune',
    'Delhi',
    'Bengaluru',
    'Hyderabad',
    'Chennai',
    'Kolkata',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select your city'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for your city',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                final selectedCity = cities[index];

                return ListTile(
                  leading: const Icon(
                    Icons.location_city,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    selectedCity,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Navigator.pop(context, selectedCity);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
