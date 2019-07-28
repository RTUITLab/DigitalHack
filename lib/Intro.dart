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
        mainImage: Column(
          children: <Widget>[
            Expanded(
              flex: 3, // 20%
              child: Text(''),
            ),
            Expanded(
              flex: 8, // 20%
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4, // 20%
                    child: Align(
                      child: SvgPicture.asset(
                        'assets/SafeHack_Logo.svg',
                        height: 180.0,
                        width: 180.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3, // 20%
                    child: Align(
                      child: Text(
                        'Safe \n Hack',
                        style: TextStyle(
                            fontFamily: 'MyFont',
                            color: Colors.white,
                            fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2, // 20%
              child: Align(
                child: Text(
                  'О киберугрозах - безопасно!',
                  style: TextStyle(
                      fontFamily: 'MyFont', color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
      ),
      title: Text('Hotels'),
      // mainImage: Image.asset(
      //   'assets/hotel.png',
      //   height: 285.0,
      //   width: 285.0,
      //   alignment: Alignment.center,
      // ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      // mainImage: Image.asset(
      //   'assets/taxi.png',
      //   height: 285.0,
      //   width: 285.0,
      //   alignment: Alignment.center,
      // ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      // mainImage: Image.asset(
      //   'assets/taxi.png',
      //   height: 285.0,
      //   width: 285.0,
      //   alignment: Alignment.center,
      // ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      onTapDoneButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PasswordAttackPage(
                Person(name: 'Alice', birthDay: '07 июля 2002')),
          ),
        );
      },
      pageButtonTextStyles: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    );
  }
}
