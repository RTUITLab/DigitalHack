import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'levels/password/attack.dart';
import 'models/person.dart';

import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class App extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      // iconImageAssetPath: 'assets/air-hostess.png',
      // bubble: Image.asset('assets/air-hostess.png'),
      body: Text(
        'Проходите уровни и узновайте что-то новое о кибербезопасности каждый день',
      ),
      title: Text(''),
      textStyle:
          TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 18),
      mainImage: Stack(
        children: <Widget>[
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 150.0,
              width: 150.0,
            ),
            alignment: new Alignment(-0.50, 0),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.55, 0),
          ),
          Align(
            child: Text(
              'Повышай уровень знаний - повышай рейтинг!',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.3),
          ),
        ],
      ),
    ),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'Изучайте компьютерную грамотность, криптографию и основы иноформативной безопасности',
        style: TextStyle(fontSize: 18),
      ),
      title: Text(''),
      mainImage: Stack(
        children: <Widget>[
          Align(
            child: SvgPicture.asset(
              'assets/computer.svg',
              height: 285.0,
              width: 285.0,
              //alignment: Alignment.center,
            ),
            alignment: new Alignment(0, 0),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/sword.svg',
              height: 100.0,
              width: 100.0,
            ),
            alignment: new Alignment(-0.6, 0.7),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 100.0,
              width: 100.0,
            ),
            alignment: new Alignment(-0.3, -1.5),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.3, -1.4),
          ),
          Align(
            child: Text(
              'Два режима игры!\nЛучшая защита - это нападение.',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.3),
          ),
        ],
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      body: Text(
        'Только полезная информация. Обучение от простого к сложному на интерактивных примерах и логических задачах.',
        style: TextStyle(fontSize: 18),
      ),
      title: Text(''),
      mainImage: Stack(
        children: <Widget>[
          Align(
            child: SvgPicture.asset(
              'assets/flowchart.svg',
              height: 150.0,
              width: 150.0,
              //alignment: Alignment.center,
            ),
            alignment: new Alignment(-0.6, 0.2),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/debugging.svg',
              height: 150.0,
              width: 150.0,
            ),
            alignment: new Alignment(0.6, 0.8),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 100.0,
              width: 100.0,
            ),
            alignment: new Alignment(-0.3, -1.5),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.3, -1.4),
          ),
          Align(
            child: Text(
              'Актуальные вопросы кибербезопасности!',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.3),
          ),
        ],
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'Соревнуйся с друзьсями, зарабатывай BIGcoin\'ы, используйте подсказкиб делая свою жизнь в интернете безопаснее!',
        style: TextStyle(fontSize: 18),
      ),
      title: Text(''),
      mainImage: Stack(
        children: <Widget>[
          Align(
            child: SvgPicture.asset(
              'assets/bars.svg',
              height: 250.0,
              width: 250.0,
              //alignment: Alignment.center,
            ),
            alignment: new Alignment(0, 0),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/coin.svg',
              height: 50.0,
              width: 50.0,
            ),
            alignment: new Alignment(-0.1, -0.5),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/coin.svg',
              height: 50.0,
              width: 50.0,
            ),
            alignment: new Alignment(0.6, -0.8),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 100.0,
              width: 100.0,
            ),
            alignment: new Alignment(-0.3, -1.5),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.3, -1.4),
          ),
          Align(
            child: Text(
              'Повышай уровень знаний - повышай рейтинг!',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.3),
          ),
        ],
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(pages, onTapDoneButton: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PasswordAttackPage(Person(name: 'Аня Иванова')),
        ), //MaterialPageRoute
      );
    },
        pageButtonTextStyles: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ));
  }
}
