import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = <String>[
      'Koja je tvoja najdraža boja?',
      'Najdraža životinja?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(children: <Widget>[
          Text(questions[questionIndex]),
          Row(
            children: [
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Donya'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Emma'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Petar'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
