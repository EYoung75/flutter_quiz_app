import "package:flutter/material.dart";

import "./question.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App"),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    ));
  }
}
