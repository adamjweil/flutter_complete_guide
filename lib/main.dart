import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {'questionText': 'What\'s is your fav color????', 'answers': [
        'Black', 'Red', ' Green', 'White'],
      },
      {'questionText': 'What\'s your favorite animal?', 'answers': [
        'Dogs', 'Cats', 'Sheep', 'Birds'],
      },

      {'questionText': 'What\'s your gender?', 'answers': [
        'Male', 'Female', 'Neither', 'Both']
      }
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

// Session 46 on Udemy
