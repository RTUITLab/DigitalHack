import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';

import '../../../menu.dart';

class WinPasswordAttackGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (builder) => MainMenuPage())),
        child: Container(
          decoration: gradientDecoration,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(0, -0.8),
                child: Text(
                  'Пароль подобран!',
                  style: TextStyle(fontSize: 40, fontFamily: 'Helvetica'),
                ),
              ),
              Align(
                  alignment: Alignment(0, -0.1),
                  child: SvgPicture.asset(
                    goalPic,
                    height: 300,
                  )),
              Align(
                alignment: Alignment(0, 0.5),
                child: Text(
                  'Успех!',
                  style: TextStyle(fontSize: 27, fontFamily: 'Helvetica-Bold'),
                ),
              ),
              Align(
                alignment: Alignment(-0.15 - 0.5, 0.7),
                child: Text('+5',
                    style:
                        TextStyle(fontSize: 27, fontFamily: 'Helvetica-Bold')),
              ),
              Align(
                  alignment: Alignment(0.15 - 0.6, 0.71),
                  child: SvgPicture.asset(
                    coinPic,
                    height: 40,
                  )),
              Align(
                alignment: Alignment(0.45, 0.7),
                child: Text('+5',
                    style:
                        TextStyle(fontSize: 27, fontFamily: 'Helvetica-Bold')),
              ),
              Align(
                  alignment: Alignment(0.65, 0.69),
                  child: SvgPicture.asset(
                    lockPic,
                    height: 40,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
