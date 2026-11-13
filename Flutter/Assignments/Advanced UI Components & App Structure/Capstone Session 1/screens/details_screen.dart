import 'package:flutter/material.dart';
import '../models/service_model.dart';

class DetailsScreen extends StatelessWidget {
  final ServiceModel service;

  const DetailsScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.name),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.deepPurple.shade50,
              child: Icon(service.icon, size: 55, color: Colors.deepPurple),
            ),

            const SizedBox(height: 25),

            Text(
              service.name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Text(
              service.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${service.name} selected!')),
                  );
                },
                child: const Text('Explore Service'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
