import 'package:flutter/material.dart';

class ServiceModel {
  final String name;
  final String description;
  final IconData icon;
  final String image;

  const ServiceModel({
    required this.name,
    required this.description,
    required this.icon,
    required this.image,
  });
}
