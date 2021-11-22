import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback resetHandler;
  Result(this.result, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (result <= 8) {
      resultText = "You are awsome!!";
    } else if (result <= 12) {
      resultText = "Pretty likeable!";
    } else if (result <= 16) {
      resultText = "You are ... strange ?!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text("Restart !"),
          textColor: Colors.blue,
        ),
      ],
    ));
  }
}
