import 'package:flutter/material.dart';

class Feature {
  final int id;
  final String name;
  final Color color; // Use 'Color' type instead of 'Colors'

  const Feature({
    required this.id,
    required this.name,
    this.color = Colors.brown, // Default value is valid
  });
}

List<Feature> data = [
  Feature(id: 1, name: 'Screen List', color: Colors.red.shade700),
  Feature(id: 2, name: 'Material Design', color: Colors.blue.shade700),
  Feature(id: 3, name: 'Example', color: Colors.brown.shade700),
  Feature(id: 4, name: 'PIS Compass Revamp', color: Colors.orange.shade700),
];
