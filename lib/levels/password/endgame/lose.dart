import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';

import '../../../menu.dart';

class LosePasswordAttackGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (builder) => MainMenuPage())),
        child: Container(
          decoration: gradientLoseDecoration,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(0, -0.8),
                child: Text(
                  'Уровень 1 не пройден',
                  style: TextStyle(fontSize: 40, fontFamily: 'Helvetica'),
                ),
              ),
              Align(
                  alignment: Alignment(0, -0.1),
                  child: Hero(
                    tag: 'bug',
                    child: SvgPicture.asset(
                      bugPic,
                      height: 300,
                    ),
                  )),
              Align(
                alignment: Alignment(0, 0.5),
                child: Text(
                  'Вы проиграли и словили баг!',
                  style: TextStyle(fontSize: 27, fontFamily: 'Helvetica'),
                ),
              ),
              Align(
                alignment: Alignment(-0.15, 0.7),
                child: Text('+1',
                    style: TextStyle(fontSize: 27, fontFamily: 'Helvetica')),
              ),
              Align(
                  alignment: Alignment(0.15, 0.7),
                  child: SvgPicture.asset(
                    bugPic,
                    height: 50,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
