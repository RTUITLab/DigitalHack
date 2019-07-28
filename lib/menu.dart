import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'general/strings.dart';
import 'general/gradientdecoration.dart';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: gradientBlueDecoration,
          child: _content(context),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Text("Темы для изучения",
              style: TextStyle(
                  fontSize: 34,
                  fontFamily: fontFamilyBold,
                  color: Colors.grey[600])),
          alignment: Alignment(0, -0.8),
        ),
        Align(
          child: GestureDetector(
              child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                    alignment: Alignment(0.80, -0.7),
                    child: Text(
                      "Уровень 1",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 22,
                          fontFamily: fontFamilyBold),
                      textAlign: TextAlign.right,
                    )),
                Container(
                  child: SizedBox(
                    width: 270,
                    child: Text(
                      "Компьютерная грамотность. Пароли",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 30,
                          fontFamily: fontFamilyLight),
                      softWrap: true,
                    ),
                  ),
                  alignment: Alignment(0, 0.05),
                )
              ],
            ),
            decoration: gradientBorderRadiusDecoration(),
            width: 350,
            height: 160,
          )),
          alignment: Alignment(0, -0.47),
        )
      ],
    );
  }
}
