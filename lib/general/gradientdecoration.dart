import 'package:flutter/material.dart';

final gradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.1, 0.5, 0.7, 0.9],
    colors: [
      Colors.green[200],
      Colors.green[300],
      Colors.green[400],
      Colors.green[500],
    ],
  ),
);
