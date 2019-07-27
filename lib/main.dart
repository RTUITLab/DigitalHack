import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/levels/password/attack.dart';
import 'package:hello_world/tests/icons.dart';

import 'general/gradientdecoration.dart';
import 'models/person.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeHack',
      theme: ThemeData(
          fontFamily: 'Helvetica',
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: Scaffold(
        body: Container(
            decoration: gradientDecoration,
            // child: MainPage(),
            child: PasswordAttackPage(Person(phoneMumber: '+7 800 555 35 35', name: 'Alice')))
        // alignment: Alignment(0.0, 1.0),
      ),
    );
  }
}

Widget flexcolumnt()
{
  return Column(
              children: <Widget>[
                Flexible(
                  flex: 4,
                  child: Container(),
                ),
                Flexible(
                    flex: 6,
                    child: Center(
                      child: LogoElement(),
                    )),
                Flexible(
                  flex: 4,
                  child: Container(),
                ),
                Flexible(
                  flex: 2,
                  child: RaisedButton(
                    onPressed: () => print("button pressed")
                  ),
                )
              ],
            );
}


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[LogoElement()],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}

class LogoElement extends StatelessWidget {
  final String imagePath = 'assets/shield_1.png';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Image.asset(
              imagePath,
              height: 200,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Safe',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'Hack',
                  style: TextStyle(fontSize: 50),
                )
              ],
            )
            // Row(
            //   // children: <Widget>[Text('sdsd')],
            // )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SvgPicture.asset(
              imagePath,
              height: 200,
            ),
            Column(
              children: <Widget>[
                Text('Safe',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Helvetica-Bold',
                    )),
                Text('Hack',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Helvetica-Bold',
                    ))
              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
