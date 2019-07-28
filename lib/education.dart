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
        'assets/earth-globe.svg',
        height: 200.0,
        width: 200.0,
      ),alignment: new Alignment(0, -0.2),),
      
      Opacity(child: Align(child: SvgPicture.asset(
        'assets/earth-globe.svg',
        height: 150.0,
        width: 150.0,
      ),alignment: new Alignment(1, 0.6),),opacity: 0.8,),
      
      Opacity(child: Align(child: SvgPicture.asset(
        'assets/earth-globe.svg',
        height: 110.0,
        width: 110.0,
      ),alignment: new Alignment(-0.6, 1),),opacity: 0.5,),

      Align(
            child: Text(
              'А вы знали, что...?',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.62),
          ),

      Align(
            child: Text(
              'Уровень 1\nПароли',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, -1.5),
          ),
      ],
      ),
        ),
  


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
              'Он должен содержать не менее 8 символов верхнего и нижнего регистров, специальные символы и цифры',
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
            alignment: new Alignment(0, -1.2),
          ),
      ],
      ),
        ),
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
        'assets/fist.svg',
        height: 120.0,
        width: 120.0,
      ),alignment: new Alignment(-0.9, -0.6),),
      Align(child: SvgPicture.asset(
        'assets/nerd.svg',
        height: 110.0,
        width: 110.0,
      ),alignment: new Alignment(0.8, 1),),
      Align(
            child: Text(
              'Brute-force (атака\nполным перебором)\n- метод решения\nматематических\nзадач, сложность\nкоторого зависит\n от количества всех\nвозможных решений.',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 24), 
              textAlign: TextAlign.right,
            ),
            alignment: new Alignment(0.7, -0.9),
          ),
      Align(
            child: Text(
              'Программно\nреализованный\nметод brute-force\nиспользуется для\nвзлома паролей,\nпутем перебора\nвсех возможных\nкомбинаций символов',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 24),
              textAlign: TextAlign.left,
            ),
            alignment: new Alignment(-0.7, 1.6),
          ),
        Align(
            child: Text(
              'Что же дальше?',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, 1.75),
          ),
      Align(
            child: Text(
              'Что такое\nbrute-force?',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(0, -1.7),
          ),
      ],
      ),
        ),
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
        'assets/hourglass.svg',
        height: 120.0,
        width: 120.0,
      ),alignment: new Alignment(0.9, -0.2),),
      Align(child: SvgPicture.asset(
        'assets/calendar.svg',
        height: 110.0,
        width: 110.0,
      ),alignment: new Alignment(0.8, 1.7),),
      
      Container(child: Align(
            child: Text(
              'Чтобы взломать пароль\nиз 4 символов верхнего\nи нижнего регистра, обычному компьютеру нужно',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30), 
              textAlign: TextAlign.left,
            ),
            alignment: new Alignment(-0.1, -1.4),
          ), margin: new EdgeInsets.symmetric(horizontal: 20.0),)
      ,
      Container(child: Align(
            child: Text(
              'Тогда как на пароль\nиз 8 символов с добавлением специальных символов нужно',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
              textAlign: TextAlign.left,
            ),
            alignment: new Alignment(-0.7, 1.1),
          ), margin: new EdgeInsets.symmetric(horizontal: 20.0),)
      ,
        Align(
            child: Text(
              '12 дней',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(-0.8, 1.5),
          ),
      Align(
            child: Text(
              '2 минуты!',
              style: TextStyle(
                  fontFamily: 'MyFont', color: Colors.white, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            alignment: new Alignment(-0.8, -0.2),
          ),
      ],
      ),
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