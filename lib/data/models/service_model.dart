import 'package:flutter/material.dart';

class ServiceModel {
  const ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final IconData icon;
}
