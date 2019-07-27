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
    return GestureDetector(
        onTap: () {
          //Navigator.pop(context);
        },
        child: Container(
            padding: const EdgeInsets.only(top: 30),
            decoration: gradientDecoration,
            child: _page()));
    //  Container(decoration: gradientDecoration, child: _userInfo()));
  }

  Widget _page() {
    return ListView(
      children: <Widget>[_header(), _userInfo(), _taskText(), _lexemsForm()],
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SvgPicture.asset(
          backPic,
          width: 63,
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
              'Аня Иванова',
              style: TextStyle(fontSize: 17, fontFamily: fontFamilyBold),
              textAlign: TextAlign.center,
            ),
            Text(
              '07 июля 2002 \nНа своей странице \nуказала, что любит\nфотографировать,\nведет блог в Instagram\nпод ником freya.',
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
                decoration: InputDecoration(),
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
        RaisedButton(
          child: Text('Запустить утилиту', style: TextStyle(color: Colors.white),),
          onPressed: () => print('123'),
          shape: StadiumBorder(),
          color: Colors.blue,
        )
      ],
    );
  }
}
