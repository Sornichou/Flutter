import 'package:flutter/material.dart';
import './question.dart';
import 'answerButton.dart';

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

  List<Map<String, Object>> questions = [
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
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return AnswerButton(_answerQuestion, answer);
            }).toList()
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
