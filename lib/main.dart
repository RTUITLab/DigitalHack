import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/tests/icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeHack',
      theme: ThemeData(
          fontFamily: 'Helvetica',
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: HelloPage(),
    );
  }
}

class HelloPage extends StatelessWidget {
  final String imagePath = 'assets/SafeHack_Logo.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.green[200],
              Colors.green[300],
              Colors.green[400],
              Colors.green[500],
            ],
          ),
        ),
        child: Column (
        children: <Widget>[
          Center(child: SvgPicture.asset(imagePath, height: 100,)),
          Text(
            'Привет',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Startup Name Generator')),
      body: _buildSuggestions(),
      // bottomSheet: Icon(Icons.star),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final String imagePath = 'assets/SafeHack_Logo.svg';
    return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
        trailing: SvgPicture.asset(imagePath, semanticsLabel: 'Acme Logo', fit: BoxFit.contain,));
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
