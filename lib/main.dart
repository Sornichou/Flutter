import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  List<String> questions = [
    'What\'s your favorite color ?',
    'What\'s your favorite animal ?',
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 == questions.length) {
        _questionIndex = 0;
      } else {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title bar'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: this._answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: this._answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: this._answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}

// Test classes

class Person {
  String name;
  int age;

  Person({@required String name, int age = 25});
}
