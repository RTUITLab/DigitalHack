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
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 18),
        mainImage: Stack(children: <Widget>[
        
      
      Opacity(child: Align(child: SvgPicture.asset(
        'assets/lock.svg',
        height: 30.0,
        width: 30.0,
        
      ),
      alignment: new Alignment(0.10, -0.6),
      ),
      opacity: 0.5,)
      ,
      Opacity(child: Align(child: SvgPicture.asset(
        'assets/lock.svg',
        height: 50.0,
        width: 50.0,
        
      ),
      alignment: new Alignment(-0.5, -0.9),
      ),
      opacity: 0.8,)
      ,
      Align(child: SvgPicture.asset(
        'assets/lock.svg',
        height: 70.0,
        width: 70.0,
      ),
      alignment: new Alignment(0.5, -1.2),
      ),
      
        Align(child: SvgPicture.asset(
        'assets/SafeHack_Logo.svg',
        height: 150.0,
        width: 150.0,
      ),
      alignment: new Alignment(-0.50, 0.1),
      ),
      Align(child: Text('Safe \n Hack', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 50), textAlign: TextAlign.center,),
      alignment: new Alignment(0.55, 0.1),
      ),
      Align(child: Text('О киберугрозах - безопасно!', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 24), textAlign: TextAlign.center,),
      alignment: new Alignment(0, 1.15),
      ),
      
      ],
      ),
        ),
  


    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'Изучайте компьютерную грамотность, криптографию и основы иноформативной безопасности', style: TextStyle(fontSize: 18),
      ),
      title: Text(''),
      mainImage: Stack(children: <Widget>[
        Align(child: SvgPicture.asset(
        'assets/computer.svg',
        height: 285.0,
        width: 285.0,
        //alignment: Alignment.center,
        ),
        alignment: new Alignment(0, 0),
        ),
        
        Align(child: SvgPicture.asset(
        'assets/sword.svg',
        height: 100.0,
        width: 100.0,
      ),
      alignment: new Alignment(-0.6, 0.7),
        ),

        Align(child: SvgPicture.asset(
        'assets/SafeHack_Logo.svg',
        height: 100.0,
        width: 100.0,
      ),
      alignment: new Alignment(-0.3 , -1.5),
      ),
      Align(child: Text('Safe \n Hack', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 30), textAlign: TextAlign.center,),
      alignment: new Alignment(0.3, -1.4),
      ),
      Align(child: Text('Два режима игры!\nЛучшая защита - это нападение.', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 24), textAlign: TextAlign.center,),
      alignment: new Alignment(0, 1.3),
      ),
      
      ],
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),


    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      body: Text(
        'Только полезная информация. Обучение от простого к сложному на интерактивных примерах и логических задачах.', style: TextStyle(fontSize: 18),
      ),
      title: Text(''),
      mainImage: Stack(children: <Widget>[
        Align(child: SvgPicture.asset(
        'assets/flowchart.svg',
        height: 150.0,
        width: 150.0,
        //alignment: Alignment.center,
        ),
        alignment: new Alignment(-0.6, 0.2),
        ),
        
        Align(child: SvgPicture.asset(
        'assets/debugging.svg',
        height: 150.0,
        width: 150.0,
      ),
      alignment: new Alignment(0.6, 0.8),
        ),

        Align(child: SvgPicture.asset(
        'assets/SafeHack_Logo.svg',
        height: 100.0,
        width: 100.0,
      ),
      alignment: new Alignment(-0.3 , -1.5),
      ),
      Align(child: Text('Safe \n Hack', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 30), textAlign: TextAlign.center,),
      alignment: new Alignment(0.3, -1.4),
      ),
      Align(child: Text('Актуальные вопросы кибербезопасности!', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 24), textAlign: TextAlign.center,),
      alignment: new Alignment(0, 1.3),
      ),
      
      ],
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),


    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'Соревнуйся с друзьсями, зарабатывай BIGcoin\'ы, используйте подсказкиб делая свою жизнь в интернете безопаснее!', style: TextStyle(fontSize: 18),
      ),
      title: Text(''),
       mainImage: Stack(children: <Widget>[
        Align(child: SvgPicture.asset(
        'assets/bars.svg',
        height: 250.0,
        width: 250.0,
        //alignment: Alignment.center,
        ),
        alignment: new Alignment(0, 0),
        ),
        
        Align(child: SvgPicture.asset(
        'assets/coin.svg',
        height: 50.0,
        width: 50.0,
      ),
      alignment: new Alignment(-0.1, -0.5),
        ),
        Align(child: SvgPicture.asset(
        'assets/coin.svg',
        height: 50.0,
        width: 50.0,
      ),
      alignment: new Alignment(0.6, -0.8),
        ),
        Align(child: SvgPicture.asset(
        'assets/SafeHack_Logo.svg',
        height: 100.0,
        width: 100.0,
      ),
      alignment: new Alignment(-0.3 , -1.5),
      ),
      Align(child: Text('Safe \n Hack', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 30), textAlign: TextAlign.center,),
      alignment: new Alignment(0.3, -1.4),
      ),
      Align(child: Text('Повышай уровень знаний - повышай рейтинг!', style: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 24), textAlign: TextAlign.center,),
      alignment: new Alignment(0, 1.3),
      ),
      
      ],
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
           skipText: Text('Далее'),
           doneText: Text('Начать'),
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PasswordAttackPage(Person(name: 'Alice', phoneMumber: '+7 800 555 35 35')),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}

/// Home Page of our example app.

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ), //Appbar
      body: Center(
        child: Text("This is the home page of the app"),
      ), //Center
    ); //Scaffold
  }
}

/* import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Just a list"),
        ),
       body: Card(child: Column(children: <Widget>[
          Image.asset('assets/pic.jpg'),
          Text('This is Security'),  
        ],),)
      ),
    );
  }
}
 */