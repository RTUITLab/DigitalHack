import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';
import 'package:hello_world/models/person.dart';

class PasswordAttackPage extends StatefulWidget {
  final Person attackedPerson;

  PasswordAttackPage(this.attackedPerson);

  @override
  PasswordAttackState createState() {
    return PasswordAttackState(attackedPerson);
  }
}

class PasswordAttackState extends State<PasswordAttackPage> {
  final Person attackedPerson;

  PasswordAttackState(this.attackedPerson);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // type: MaterialType.card,
      body: Container(
          padding: const EdgeInsets.only(top: 30),
          decoration: gradientDecoration,
          child: _page(context)),
    );
    //  Container(decoration: gradientDecoration, child: _userInfo()));
  }

  Widget _page(BuildContext context) {
    return ListView(
      children: <Widget>[
        _header(context),
        _userInfo(),
        _taskText(),
        _lexemsForm()
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Align(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              backPic,
              width: 63,
            ),
          ),
          alignment: Alignment(-0.90, 0),
        ),
        Align(
          child: Text(
            'Уровень 1. Нападение\n Пароли',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontFamily: fontFamilyBold),
          ),
          alignment: Alignment.topCenter,
        ),
        Align(
          child: SvgPicture.asset(
            lightBulpPic,
            width: 70,
          ),
          alignment: Alignment(0.90, 0),
        ),
        Align(
          child: Text(
            "4",
            style: TextStyle(
                color: Colors.blueAccent,
                fontFamily: fontFamilyBold,
                fontSize: 26),
          ),
          alignment: Alignment(0.90, 0.0),
        )
      ],
    );
  }

  Widget _userInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SvgPicture.asset(
          girlPic,
          width: 200,
        ),
        Column(
          children: <Widget>[
            Text(
              'Аня Иванова',
              style: TextStyle(fontSize: 23, fontFamily: fontFamilyBold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 200,
              child: Text(
                '07 июля 2002 На своей странице указала, что любит фотографировать, ведет блог в Instagram под ником freya.',
                style: TextStyle(fontSize: 19, fontFamily: fontFamilyLight),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _taskText() {
    return Container(
      alignment: Alignment.center,
      color: Colors.green[800],
      child: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              width: 350,
              child: Text(
                'Создайте словарь для brute-force утилиты, чтобы с её помощью подобрать пароль к странице Ани',
                style: TextStyle(fontSize: 17, fontFamily: fontFamilyBold),
                textAlign: TextAlign.center,
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: SizedBox(
              width: double.infinity,
              child: Container(
                  child: Stack(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    child: SvgPicture.asset(
                      lightBulpPic,
                      width: 35,
                    ),
                    alignment: Alignment(-0.85, 0),
                  ),
                  Align(
                    child: SizedBox(
                      width: 310,
                      child: Text(
                        'Аня не подкована в кибербезопасности и не знает, что нельзя использовать в паролях открытую информацию, такую как фамилия, дата рождения, никнеймы и т.п. ',
                        style: TextStyle(
                            fontSize: 17, fontFamily: fontFamilyLight),
                        textAlign: TextAlign.justify,
                        softWrap: true,
                      ),
                    ),
                    alignment: Alignment(0.5, 0),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget _lexemsForm() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
                  child: RaisedButton(
            child: Text(
              'Запустить утилиту',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => print('123'),
            shape: StadiumBorder(),
            color: Colors.blue,
          ),
        ),
        Container(
          child: Text(
            "Колличество лексем: ",
            style: TextStyle(fontFamily: fontFamilyBold, fontSize: 15),
          ),
          margin: EdgeInsets.only(top: 20, bottom: 10),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(right: 15, left: 30),
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Добавить'),
                color: Colors.yellow,
                shape: StadiumBorder(),
                onPressed: () => print('12345'),
              )
            ],
          ),
        ),
      ],
    );
  }
}