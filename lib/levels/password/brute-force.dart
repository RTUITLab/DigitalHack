import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/general/gradientdecoration.dart';

class BruteForce extends StatefulWidget {
  List<String> lexems;

  BruteForce(Set<String> lexems) {
    this.lexems = lexems.toList();
    this.lexems.sort();
  }

  @override
  State<StatefulWidget> createState() {
    return BruteForceState();
  }
}

class BruteForceState extends State<BruteForce> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (timer) => print(timer.tick));
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 30),
          decoration: gradientDecoration,

      ),
    );
  }

  Widget lexems() {
    return Container();
  }
}
