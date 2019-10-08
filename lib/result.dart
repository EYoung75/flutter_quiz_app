import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "Congrats";
    if (finalScore <= 7) {
      resultText = "You are the best around";
    } else if (finalScore <= 14) {
      resultText = "Not too shabby";
    } else if (finalScore <= 21) {
      resultText = "Not very likeable";
    } else {
      resultText = "You literally suck";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("Restart quiz"),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
