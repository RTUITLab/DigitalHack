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
          Navigator.pop(context);
        },
        child: Container(
            padding: const EdgeInsets.only(top: 30, left: 10),
            decoration: gradientDecoration,
            child: _page()));
    //  Container(decoration: gradientDecoration, child: _userInfo()));
  }

  Widget _page() {
    return Column (
      children: <Widget>[
        Row(children: <Widget>[
          SvgPicture.asset(backPic, width: 90,),
          Text('middle'),
          SvgPicture.asset(lightBulpPic, width: 70,)
        ],)
      ],
    );
  }

  Widget _userInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SvgPicture.asset(girlPic, width: 130,),
        Container(
            padding: const EdgeInsets.only(left: 10),
            // margin: const EdgeInsets.only(top: 400),
            child: Column(
              children: <Widget>[
                Text(attackedPerson.name),
              ],
            ))
      ],
    );
  }
}
