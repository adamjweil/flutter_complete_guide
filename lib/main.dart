import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // var questions = ['What\'s is your fav color>', 'What\'s your favorite animal?', 'What is you gender?'];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ), // AppBar
//         body: Column(
//
//         )Text('This is default text'),
//         ), // Scaaffold
//       ); // MaterialApp
//   }
// }

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  var questions = [
    'What\'s is your fav color????',
    'What\'s your favorite animal?',
    'What is you gender?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ), // Scaaffold
    ); // MaterialApp
  }
}

// Session 30 on Udemy
