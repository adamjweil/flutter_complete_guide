import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  var questions = ['What\'s is your fav color>', 'What\'s your favorite animal?', 'What is you gender?'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(child: Text('Answer 1'), onPressed: null),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ), // Scaaffold // Materialize
      ),
    );
  }
}


// Session 30 on Udemy
