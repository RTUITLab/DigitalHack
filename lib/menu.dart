import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/levels/password/persons.dart';
import 'levels/password/attack.dart';
import 'general/strings.dart';
import 'education.dart';
import 'general/gradientdecoration.dart';
import 'models/person.dart';

enum WidgetMarker { main, level }

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: gradientBlueDecoration,
          child: BodyWidget(),
        ),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.main;

  @override
  Widget build(BuildContext context) {
    return Container(child: getCustomContainer(context));
  }

  Widget _content() {
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

  Widget getCustomContainer(BuildContext context) {
    switch (selectedWidgetMarker) {
      case WidgetMarker.main:
        return _content();
      case WidgetMarker.level:
        return _contentLevel(context);
    }
  }

  Widget _boxLevel(BoxDecoration box, SvgPicture img, Alignment align, Widget Function(BuildContext) test)
  {
     return GestureDetector(
       onTap: () {
          Navigator.push(
                context,
                MaterialPageRoute(
                    builder: test));
       },
            child: Align(
        child: Container(
          child: Align(
            child: img,
          ),
          decoration: box,
          width: 350,
          height: 140,
        ),
        alignment: align,
    ),
     );
  }

  Widget _contentLevel(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          child: GestureDetector(
            child: SvgPicture.asset(
              backPic,
              height: 60,
            ),
            onTap: () {
             setState(() {
              selectedWidgetMarker = WidgetMarker.main; 
             });
            },
          ),
          alignment: Alignment(-0.85, -0.9),
        ),
        Container(
          child: SizedBox(
            width: 250,
            child: Text(
              "Компьютерная грамотность. Пароли",
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: fontFamilyLight,
                  color: Colors.grey[600]),
              softWrap: true,
            ),
          ),
          alignment: Alignment(0.3, -0.9),
        ),
        _boxLevel(gradientBorderRadiusDecoration(), SvgPicture.asset(globusPic, height: 110,), Alignment(0,-0.55), ((context) =>
                        App_Ed())),
        _boxLevel(gradientBorderRadiusGreenDecoration(), SvgPicture.asset(imagePath, height: 110), Alignment(0,0.03), null),
        _boxLevel(gradientBorderRadiusRedDecoration(), SvgPicture.asset(swordPic, height: 110), Alignment(0,0.62), ((context) =>
                        PasswordAttackPage(getRandomPerson()))),
         bottomNavig(context, Alignment(0, 0))
      ],
    );
  }

  Widget oneLevel(BuildContext context, Alignment align) {
    return Align(
      child: GestureDetector(
          onTap: () {
            setState(() {
              selectedWidgetMarker = WidgetMarker.level;
            });
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) =>
            //             PasswordAttackPage(getRandomPerson())));
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
        Container(
          color: Colors.white,
          height: 70,
          child: Row(
            children: <Widget>[
              Align(
                child: SvgPicture.asset(
                  avatarPic,
                  height: 50,
                ),
              ),
              Align(
                child: SvgPicture.asset(
                  playerButtonPic,
                  height: 50,
                ),
              ),
              Align(
                child: SvgPicture.asset(
                  settingPic,
                  height: 50,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
