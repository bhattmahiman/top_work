import 'package:flutter/material.dart';
import '../models/service_model.dart';
import '../widgets/service_list_item.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<ServiceModel> services = const [
    ServiceModel(
      name: 'Food Delivery',
      description: 'Order delicious food from nearby restaurants.',
      icon: Icons.delivery_dining,
      image: '',
    ),
    ServiceModel(
      name: 'Movie Tickets',
      description: 'Book tickets for the latest movies.',
      icon: Icons.movie,
      image: '',
    ),
    ServiceModel(
      name: 'Mobile Recharge',
      description: 'Recharge your mobile number instantly.',
      icon: Icons.phone_android,
      image: '',
    ),
    ServiceModel(
      name: 'Train Booking',
      description: 'Search and book train tickets easily.',
      icon: Icons.train,
      image: '',
    ),
    ServiceModel(
      name: 'IPL Fantasy',
      description: 'Create your fantasy cricket team.',
      icon: Icons.sports_cricket,
      image: '',
    ),
  ];

  void openDetails(BuildContext context, ServiceModel service) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsScreen(service: service)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ServiceHub',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 5),
            child: Text(
              'Welcome to ServiceHub!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Explore trending services in one place.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 22, 16, 10),
            child: Text(
              'Trending Services',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];

                return ServiceListItem(
                  service: service,
                  onTap: () => openDetails(context, service),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
