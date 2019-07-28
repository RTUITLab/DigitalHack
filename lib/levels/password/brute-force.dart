import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';
import 'package:hello_world/levels/password/endgame/win.dart';

import 'endgame/lose.dart';

class BruteForce extends StatefulWidget {
  List<String> lexems;
  final String password;

  BruteForce(this.password, Set<String> lexems) {
    this.lexems = lexems.toList();
    this.lexems.sort();
  }

  @override
  State<StatefulWidget> createState() {
    return BruteForceState(lexems, password);
  }
}

class BruteForceState extends State<BruteForce> {
  Timer _timer;

  final List<String> lexems;
  final String password;

  int index1 = 0;
  int index2 = 0;

  int checksLeft = 0;
  int totalchecks = 0;

  BruteForceState(this.lexems, this.password) {
    checksLeft = totalchecks = this.lexems.length * this.lexems.length;
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 600), (timer) => _tick());
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 40),
            decoration: gradientDecoration,
            child: _lexems2()));
  }

  Widget _lexems2() {
    var inners = List<Align>();
    inners.add(Align(
      alignment: Alignment(-0.4, 0.85),
      child: Hero(
        child: SvgPicture.asset(
          goalPic,
          height: 50,
        ),
        tag: 'goal',
      ),
    ));
    inners.add(Align(
      alignment: Alignment(0.4, 0.85),
      child: Hero(
        child: SvgPicture.asset(
          bugPic,
          height: 50,
        ),
        tag: 'bug',
      ),
    ));
    inners.add(Align(
        alignment: Alignment(0, -0.88),
        child: Text(
          'Подбор пароля ${(100 * (1 - checksLeft / totalchecks)).floor()}%',
          style: TextStyle(fontFamily: fontFamilyLight, fontSize: 40),
        )));
    inners.add(Align(
        alignment: Alignment(0, -0.7),
        child: LinearProgressIndicator(
          value: 1 - checksLeft / totalchecks,
        )));
    for (var i = 0; i < 9; i++) {
      if (i == 4) {
        inners.add(Align(
            alignment: Alignment(0, (-1 + i / 4) * 0.6),
            child: Opacity(
              opacity:
                  i < 4 ? 1 / 5 + (i) / 5 : i > 4 ? 1 / 5 + (8 - i) / 5 : 1,
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Hero(
                    tag: 'correct-password',
                    child: Text(
                      '${lexems[index1]}${lexems[index2]}',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    )),
              ),
            )));
        continue;
      }
      inners.add(Align(
          alignment: Alignment(-0.6, (-1 + i / 4) * 0.6),
          child: Opacity(
            opacity: i < 4 ? 1 / 5 + (i) / 5 : i > 4 ? 1 / 5 + (8 - i) / 5 : 1,
            child: Container(
                width: 150,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Text(
                  _getPasswordFor(index1, i),
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                )),
          )));
      inners.add(Align(
          alignment: Alignment(0.6, (-1 + i / 4) * 0.6),
          child: Opacity(
            opacity: i < 4 ? 1 / 5 + (i) / 5 : i > 4 ? 1 / 5 + (8 - i) / 5 : 1,
            child: Container(
                width: 150,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Text(
                  _getPasswordFor(index2, i),
                  style: TextStyle(color: Colors.black, fontSize: 25),
                )),
          )));
    }
    return Stack(children: inners);
  }

  String _getPasswordFor(int passIndex, int placeIndex) {
    placeIndex = placeIndex - 4;
    passIndex = placeIndex + passIndex;
    while (passIndex < 0) {
      passIndex += lexems.length;
    }
    while (passIndex >= lexems.length) {
      passIndex -= lexems.length;
    }
    return '$passIndex : ${lexems[passIndex]}';
  }

  Widget _lexems() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[_leftLexems(), _rightLexems()],
    );
  }

  Widget _leftLexems() {
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.grey)),
            child: Text(_topFirst(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: fontFamilyLight)),
          ),
        ),
        Container(
          width: 150,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.grey)),
          child: Text(_middleFirst(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: fontFamilyLight)),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.grey)),
            child: Text(_bottomFirst(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: fontFamilyLight)),
          ),
        ),
      ],
    );
  }

  Widget _rightLexems() {
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.grey)),
            child: Text(_topSecond(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: fontFamilyLight)),
          ),
        ),
        Container(
          width: 150,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.grey)),
          child: Text(_middleSecond(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: fontFamilyLight)),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.grey)),
            child: Text(_bottomSecond(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: fontFamilyLight)),
          ),
        ),
      ],
    );
  }

  Widget _checkProgress() {
    if (checksLeft != 0)
      return Container(
        margin: const EdgeInsets.all(10),
        height: 100,
        width: 100,
        child: CircularProgressIndicator(
          value: 1 - checksLeft / totalchecks,
        ),
      );
    return Container();
  }

  void _tick() {
    setState(() {
      checksLeft--;
      index2++;
      if (index2 == lexems.length) {
        index2 = 0;
        index1++;
      }
      if (index1 == lexems.length) {
        index1 = 0;
        _timer.cancel();
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (builder) => LosePasswordAttackGame()));
      }

      if (lexems[index1] + lexems[index2] == password) {
        _timer.cancel();
        Timer.periodic(Duration(seconds: 1), (timer) {
          timer.cancel();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (builder) => WinPasswordAttackGame(password)));
        });
      }
    });
  }

  String _topFirst() {
    if (index1 == 0) return lexems[lexems.length - 1];
    return lexems[index1 - 1];
  }

  String _middleFirst() {
    return lexems[index1 % lexems.length];
  }

  String _bottomFirst() {
    return lexems[(index1 + 1) % lexems.length];
  }

  String _topSecond() {
    if (index2 == 0) return lexems[lexems.length - 1];
    return lexems[index2 - 1];
  }

  String _middleSecond() {
    return lexems[index2 % lexems.length];
  }

  String _bottomSecond() {
    return lexems[(index2 + 1) % lexems.length];
  }
}
