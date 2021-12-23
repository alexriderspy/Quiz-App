import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final VoidCallback resetQuiz;
  const Result(this.totalScore, this.resetQuiz, {Key? key}) : super(key: key);

  String get resultText {
    return 'Your score is ' + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultText),
        ),
        TextButton(
          onPressed: resetQuiz,
          child: Text('Reset Quiz'),
        )
      ],
    );
  }
}
