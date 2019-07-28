import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/levels/password/persons.dart';
import 'levels/password/attack.dart';
import 'general/strings.dart';
import 'general/gradientdecoration.dart';
import 'models/person.dart';

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
        oneLevel(context, Alignment(0, -0.55)),
        customLevel(Alignment(0, 0.03), "Уровень 2"),
        customLevel(Alignment(0, 0.62), "Уровень 3"),
        bottomNavig(context, Alignment(0, 0))
      ],
    );
  }

  Widget oneLevel(BuildContext context, Alignment align) {
    return Align(
      child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PasswordAttackPage(
                          getRandomPerson())));
          },
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
                ),
                Align(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Container(
                        decoration: curcleDecoration(Colors.white),
                          
                      ),
                    ),
                    alignment: Alignment(0.8, 0.8)),
                Align(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Container(
                        decoration: curcleDecoration(Colors.white),
                      ),
                    ),
                    alignment: Alignment(0.55, 0.8)),
                Align(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Container(
                        decoration: curcleDecoration(Colors.green),
                      ),
                    ),
                    alignment: Alignment(0.30, 0.8))
              ],
            ),
            decoration: gradientBorderRadiusDecoration(),
            width: 350,
            height: 140,
          )),
      alignment: align,
    );
  }

  Widget customLevel(Alignment align, String name) {
    return Align(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment(0.80, -0.7),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: fontFamilyBold),
                  textAlign: TextAlign.right,
                )),
            Align(
              child: SvgPicture.asset(
                lockPic,
                height: 80,
              ),
            )
          ],
        ),
        decoration: gradientBorderRadiusNotActiveDecoration(),
        width: 350,
        height: 140,
      ),
      alignment: align,
    );
  }

  Widget bottomNavig(BuildContext context, Alignment align) {
    return Column(
      children: <Widget>[
        Container(color: Colors.white,
        height: 70,
        child: Row(children: <Widget>[
          Align(child: SvgPicture.asset(avatarPic, height: 50,),),
          Align(child: SvgPicture.asset(playerButtonPic, height: 50,),),
          Align(child: SvgPicture.asset(settingPic, height: 50,),),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
