import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';

class LosePasswordAttackGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: gradientDecoration,
        child: Stack(
          children: <Widget>[
            Align(
              child: Text('Уровень 1 не пройден'),
            ),
            Align(child: SvgPicture.asset(bugPic),)
          ],
        ),
      ),
    );
  }
}
