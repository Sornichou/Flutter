import 'package:flutter/material.dart';
import './result.dart';
import './quizz.dart';

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
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 5},
        {'text': 'rabbit', 'score': 3},
        {'text': 'snake', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor ?',
      'answers': [
        {'text': 'Bob', 'score': 10},
        {'text': 'Karl', 'score': 5},
        {'text': 'Jeff', 'score': 3},
        {'text': 'Steve', 'score': 1}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuizz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title bar'),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < _questions.length
            ? Quizz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuizz),
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
