import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'Bad score';
    } else if (resultScore <= 12) {
      resultText = 'Middle score';
    } else if (resultScore <= 16) {
      resultText = 'Not bad at all';
    } else {
      resultText = 'You did it !';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quizz'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
