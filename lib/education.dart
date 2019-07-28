import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'levels/password/attack.dart';
import 'levels/password/persons.dart';
import 'models/person.dart';
import 'menu.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class App_Ed extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFFD49703),
        // iconImageAssetPath: 'assets/air-hostess.png',
        // bubble: Image.asset('assets/air-hostess.png'),
        body: Text(
          '',
        ),
        title: Text(''),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 18),
        mainImage: Stack(children: <Widget>[
      
      Align(child: SvgPicture.asset(
        'assets/white_circle.svg',
        height: 250.0,
        width: 250.0,
      ),alignment: new Alignment(0, 0),),
      Align(child: SvgPicture.asset(
        'assets/key.svg',
        height: 160.0,
        width: 160.0,
      ),alignment: new Alignment(-0.05, -0.05),),
      Align(child: SvgPicture.asset(
        'assets/thinking.svg',
        height: 100.0,
        width: 100.0,
      ),alignment: new Alignment(-0.55, 2),),
      Align(
            child: Text(
              'Он должен содержать не менее 8 символов верхнего и нижнего регистров, специальные символы и цыфры',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.25),
          ),
      Align(
            child: Text(
              'Зачем так\nсложно?',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.45, 1.82),
          ),

      Align(
            child: Text(
              'Надежный пароль. Важно понимать, какой он!',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, -1.25),
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
              'assets/swordcircle.svg',
              height: 130.0,
              width: 130.0,
            ),
            alignment: new Alignment(-0.7, 0.8),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 70.0,
              width: 70.0,
            ),
            alignment: new Alignment(-0.2, -1.7),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 26),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.2, -1.65),
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
            alignment: new Alignment(-0.7, 0.2),
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
              'assets/coding.svg',
              height: 150.0,
              width: 150.0,
            ),
            alignment: new Alignment(0.6, -0.5),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 70.0,
              width: 70.0,
            ),
            alignment: new Alignment(-0.2, -1.65),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 26),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.2, -1.6),
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
              'assets/statscircle.svg',
              height: 250.0,
              width: 250.0,
              //alignment: Alignment.center,
            ),
            alignment: new Alignment(0, 0),
          ),
          Opacity(child: Align(
            child: SvgPicture.asset(
              'assets/coin.svg',
              height: 50.0,
              width: 50.0,
            ),
            alignment: new Alignment(-0.7, 0.6),
          ), opacity: 0.5,)
          ,
          Opacity(child: Align(
            child: SvgPicture.asset(
              'assets/coin.svg',
              height: 40.0,
              width: 40.0,
            ),
            alignment: new Alignment(-0.1, 0.9),
          ), opacity: 0.8,)
          ,
          Align(
            child: SvgPicture.asset(
              'assets/coin.svg',
              height: 60.0,
              width: 60.0,
            ),
            alignment: new Alignment(0.7, 0.7),
          ),
          Opacity(child: Align(
            child: SvgPicture.asset(
              'assets/light-bulb.svg',
              height: 40.0,
              width: 40.0,
            ),
            alignment: new Alignment(-0.85, -0.2),
          ), opacity: 0.5,)
          ,
          Opacity(child: Align(
            child: SvgPicture.asset(
              'assets/light-bulb.svg',
              height: 60.0,
              width: 60.0,
            ),
            alignment: new Alignment(-0.3, -0.8),
          ), opacity: 0.8,)
          ,
          Align(
            child: SvgPicture.asset(
              'assets/light-bulb.svg',
              height: 90.0,
              width: 90.0,
            ),
            alignment: new Alignment(0.9, -0.8),
          ),
          Align(
            child: SvgPicture.asset(
              'assets/SafeHack_Logo.svg',
              height: 70.0,
              width: 70.0,
            ),
            alignment: new Alignment(-0.2, -1.7),
          ),
          Align(
            child: Text(
              'Safe \n Hack',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 26),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0.2, -1.65),
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
    return IntroViewsFlutter(
          pages,
           skipText: Text('Далее'),
           doneText: Text('Начать'),
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MainMenuPage(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ));
        
          
  }
}