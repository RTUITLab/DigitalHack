import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/general/gradientdecoration.dart';
import 'package:hello_world/general/strings.dart';

class BruteForce extends StatefulWidget {
  List<String> lexems;

  BruteForce(Set<String> lexems) {
    this.lexems = lexems.toList();
    this.lexems.sort();
  }

  @override
  State<StatefulWidget> createState() {
    return BruteForceState(lexems);
  }
}

class BruteForceState extends State<BruteForce> {
  Timer _timer;

  final List<String> lexems;

  int index1 = 0;
  int index2 = 0;

  int checksLeft = 0;
  int totalchecks = 0;

  BruteForceState(this.lexems) {
    checksLeft = totalchecks = this.lexems.length * this.lexems.length;
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 500), (timer) => _tick());
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
        padding: const EdgeInsets.only(top: 30),
        decoration: gradientDecoration,
        child: Column(children: [_lexems(), _checkProgress()]),
      ),
    );
  }

  Widget _lexems() {
    return Row(
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
    print(100 - 100 * checksLeft / totalchecks);
    if (checksLeft != 0)
      return Container(
        margin: const EdgeInsets.all(10),
        height: 100,
        width: 100,
        child: CircularProgressIndicator (
          value: 1 -  checksLeft / totalchecks,
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
        print("DONE");
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
