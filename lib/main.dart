import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Cat", "Dog", "Shark", "Elephant"]
    },
    {
      "questionText": "What is the meaning of life?",
      "answers": ["42", "42", "42", "42"]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App"),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: <Widget>[
                    Question(questions[_questionIndex]["questionText"]),
                    ...(questions[_questionIndex]["answers"] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text("Congrats....."),
                )),
    ));
  }
}
