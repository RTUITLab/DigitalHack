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
        child: MainPage(),
      )
          ),
    );
  }
}

class MainPage extends StatelessWidget {
  final String imagePath = 'assets/SafeHack_Logo.svg';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          child: SvgPicture.asset(
            imagePath,
            height: 240,
          ),
          alignment: Alignment(0, -0.2),
        ),
        Align(
          child: RaisedButton(
            child: Container(
              child: Text("Познакомимся?", style: TextStyle(fontSize: 40)),
              margin: EdgeInsets.only(bottom: 5, top: 5, left: 20, right: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasswordAttackPage(Person(name: 'Аня Иванова', birthDay: '7 июля 2002'))));
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          alignment: Alignment(0, 0.75),
        ),
        Align(
          child: FlatButton(
            child: Text('Уже есть аккаунт? Войти',
                style: TextStyle(fontSize: 27, color: Colors.white)),
            onPressed: () {
              print("Yee");
            },
            
          ),
          alignment: Alignment(0, 0.9),
        ),
        qUElement(-0.2, 0.4, 70),
        qUElement(-0.5, -0.7, 50),
        qUElement(0.5, -0.87, 65),
        qUElement(0.8, -0.47, 25),
        qUElement(0.8, 0.2, 90),
        qUElement(-0.8, -0.1, 30),
      ],
    );
  }

  Widget qUElement(double a, double b, double size) {
    return Align(
      child: Text('?',
          style: TextStyle(
              fontSize: size,
              fontFamily: 'Helvetica-Bold',
              color: Color.fromARGB(100, 255, 255, 255))),
      alignment: Alignment(a, b),
    );
  }
}
