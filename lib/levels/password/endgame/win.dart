import 'package:flutter/material.dart';
import 'package:hello_world/general/gradientdecoration.dart';

class WinPasswordAttackGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientDecoration,
      child: Text("WIN"),
    );
  }
}
