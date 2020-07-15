import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  List<String> questions = [
    'What\'s your favorite color ?',
    'What\'s your favorite animal ?',
  ];

  void answerQuestion() {
    setState(() {
      if (questionIndex + 1 == questions.length) {
        questionIndex = 0;
      } else {
        questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title here'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: this.answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: this.answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: this.answerQuestion,
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
