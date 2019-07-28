import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';
import 'package:hello_world/models/person.dart';

import 'brute-force.dart';

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
  final lexems = new Set<String>();
  final lexemsController = TextEditingController();

  PasswordAttackState(this.attackedPerson);

  @override
  void dispose() {
    lexemsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 30),
          decoration: gradientDecoration,
          child: _page(context)),
    );
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
              attackedPerson.name,
              style: TextStyle(fontSize: 23, fontFamily: fontFamilyBold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 200,
              child: Text(
                '${attackedPerson.birthDay} На своей странице указала, что любит фотографировать, ведет блог в Instagram под ником freya.',
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
            onPressed: () {
              print(lexems);
              print(lexems.length);
              if (lexems.length < 2) {
                showDialog(
                    context: context,
                    builder: (builder) => AlertDialog(
                          title:
                              Text('Необходимо ввести как минимум два слова'),
                        ));
                return;
              }
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return BruteForce(lexems);
              }));
            },
            shape: StadiumBorder(),
            color: Colors.blue,
          ),
        ),
        Container(
          child: Text(
            'Колличество лексем: ${lexems.length}',
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
                      controller: lexemsController,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Добавить'),
                color: Colors.yellow,
                shape: StadiumBorder(),
                onPressed: () {
                  if (lexemsController.text.trim().isEmpty) {
                    showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                              title:
                                  Text('Строки только с пробелами недопустимы'),
                            ));
                  } else if (lexems.contains(lexemsController.text)) {
                    showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                              title: Text(
                                  'Данное предположение уже занесено в базу'),
                            ));
                  } else
                    setState(() {
                      lexems.add(lexemsController.text);
                    });
                  lexemsController.text = '';
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
