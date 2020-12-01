import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // '_' turns it into a Private Class
  // Variables on Classes = PROPERTIES
  final _questions = const [
    {
      'questionText': 'What\'s is your fav color????',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dogs', 'score': 100},
        {'text': 'Cats', 'score': -10},
        {'text': 'Sheep', 'score': 6},
        {'text': 'Birds', 'score': 66},
      ],
    },
    {
      'questionText': 'What\'s your gender?',
      'answers': [
        {'text': 'Male', 'score': 2},
        {'text': 'Female', 'score': 3},
        {'text': 'Neither', 'score': 4},
        {'text': 'Both', 'score': 5},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    // _totalScore = _totalScore + score;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('We have no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final names = ['Max', 'Manu', 'Julie'];
    final result = names.map((name) => Text(name)).toList();
    print(result);

    // var dummy = ['Helllo'];
    // dummy.add('Max');
    // print(dummy);
    // questions = [] // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}

// Session 53 on Udemy
