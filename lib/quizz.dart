import 'package:flutter/material.dart';
import './answerButton.dart';
import './question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quizz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return AnswerButton(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
