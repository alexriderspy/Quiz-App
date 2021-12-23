import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is capital of India?',
      'answers': [
        {
          'text': 'Delhi',
          'score': 4,
        },
        {
          'text': 'Mumbai',
          'score': -1,
        },
        {
          'text': 'Kolkata',
          'score': -1,
        },
        {
          'text': 'Chennai',
          'score': -1,
        }
      ],
    },
    {
      'questionText': 'What is IT short for?',
      'answers': [
        {'text': 'Information Technology', 'score': 4},
        {'text': 'Information TechGiant', 'score': -1},
        {'text': 'Indian Technology', 'score': -1},
        {'text': 'Info Tech', 'score': -1}
      ],
    },
    {
      'questionText': 'What is capital of West Bengal?',
      'answers': [
        {'text': 'Sonarpur', 'score': -1},
        {'text': 'Howrah', 'score': -1},
        {'text': 'Kolkata', 'score': 4},
        {'text': 'Bakura', 'score': -1}
      ],
    }
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (questionIndex < questions.length)
            ? Quiz(
                questionIndex: questionIndex,
                questions: questions,
                answerQuestion: answerQuestion,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
