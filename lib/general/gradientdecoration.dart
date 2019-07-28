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

final gradientBlueDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.1, 0.5, 0.7, 0.9],
    colors: [
      Colors.blue[200],
      Colors.blue[300],
      Colors.blue[400],
      Colors.blue[500],
    ],
  ),
);

BoxDecoration gradientBorderRadiusDecoration() => BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.2, 0.3, 0.9],
    colors: [
      Colors.yellow[400],
      Colors.yellow[500],
      Colors.yellow[600],
      Colors.yellow[800],
    ],
  ),
  border: Border.all(width: 0, color: Color.fromARGB(0, 0, 0, 0)),
  borderRadius: BorderRadius.all(Radius.circular(40))
);

BoxDecoration CurcleDecoration() => BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.2, 0.3, 0.9],
    colors: [
      Colors.yellow[400],
      Colors.yellow[500],
      Colors.yellow[600],
      Colors.yellow[800],
    ],
  ),
  border: Border.all(width: 0, color: Color.fromARGB(0, 0, 0, 0)),
  borderRadius: BorderRadius.all(Radius.circular(40))
);