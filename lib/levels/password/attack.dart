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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            backPic,
            width: 63,
          ),
        ),
        Text(
          'Уровень1. Нападение\n Пароли',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontFamily: fontFamilyBold),
        ),
        SvgPicture.asset(
          lightBulpPic,
          width: 70,
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
              style: TextStyle(fontSize: 17, fontFamily: fontFamilyBold),
              textAlign: TextAlign.center,
            ),
            Text(
              "${attackedPerson.birthDay}\nНа своей странице \nуказала, что любит\nфотографировать,\nведет блог в Instagram\nпод ником freya.",
              style: TextStyle(fontSize: 17, fontFamily: fontFamilyLight),
              textAlign: TextAlign.center,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Создайте словарь для brute-force\nутилиты, чтобы с её помощью\nподобрать пароль к странице Ани',
            style: TextStyle(fontSize: 17, fontFamily: fontFamilyBold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: SvgPicture.asset(
                    lightBulpPic,
                    width: 20,
                  ),
                ),
                Text(
                  'Аня не подкована в кибербезопасности и \nне знает, что нельзя использовать в\nпаролях открытую информацию, такую как\nфамилия, дата рождения, никнеймы и т.п. ',
                  style: TextStyle(fontSize: 17, fontFamily: fontFamilyLight),
                  textAlign: TextAlign.justify,
                ),
              ],
            )),
          )
        ],
      ),
    );
  }

  Widget _lexemsForm() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: lexemsController,
                decoration: InputDecoration(),
              ),
            ),
            RaisedButton(
              child: Text('Добавить'),
              color: Colors.yellow,
              shape: StadiumBorder(),
              onPressed: () {
                if (lexems.contains(lexemsController.text)) {
                  print('INCORRECT VALUE');
                  // Света сказала что при вводе повторяющийся лексемы надо орять на пользователя, я хз как.
                }
                lexems.add(lexemsController.text);
                lexemsController.text = '';
              },
            )
          ],
        ),
        RaisedButton(
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
                        title: Text('Необходимо ввести как минимум два слова'),
                      ));
              return;
            }
            Navigator.push(context, MaterialPageRoute(builder: (builder) {
              return BruteForce(lexems);
            }));
          },
          shape: StadiumBorder(),
          color: Colors.blue, 
        )
      ],
    );
  }
}
