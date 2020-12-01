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
      'answers': ['Black', 'Red', ' Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dogs', 'Cats', 'Sheep', 'Birds'],
    },
    {
      'questionText': 'What\'s your gender?',
      'answers': ['Male', 'Female', 'Neither', 'Both']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

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
        : Center(
            child: Text('You did it!'),
        ),
      ),
    );
  }
}

// Session 46 on Udemy
