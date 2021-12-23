import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText;

  const Answer(this.answerText, this.answerQuestion, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.yellow),
        ),
      ),
    );
  }
}
