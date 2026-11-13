import 'package:flutter/material.dart';
import '../models/service_model.dart';

class ServiceListItem extends StatelessWidget {
  final ServiceModel service;
  final VoidCallback onTap;

  const ServiceListItem({
    super.key,
    required this.service,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.deepPurple.shade50,
            child: Icon(service.icon, color: Colors.deepPurple, size: 26),
          ),
          title: Text(
            service.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            service.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}
