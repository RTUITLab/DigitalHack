import 'package:flutter/material.dart';
import 'package:hello_world/general/gradientdecoration.dart';
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
    return Container(
      
      decoration: gradientDecoration,
      child: _userInfo()
    );
  }

  Widget _userInfo() {
    return Row(
      children: <Widget>[
        Text(attackedPerson.name)
      ],
    );
  }
}
