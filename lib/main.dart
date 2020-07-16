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

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['black', 'red', 'green', 'white']
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['cat', 'dog', 'rabbit', 'snake']
    },
    {
      'questionText': 'What\'s your favorite instructor ?',
      'answers': ['Bob', 'Karl', 'Jeff', 'Steve']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
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
            : Result(),
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
