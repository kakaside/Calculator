import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonStyle extends StatelessWidget {
  final String text;
  final Color buttonCollor;
  final Color textCollor;
  final Color splashColor;
  final Function callback;

  ButtonStyle(
      {this.text, this.buttonCollor, this.textCollor, this.splashColor, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: SizedBox(
        height: 65,
        width: 65,
        child: FlatButton(
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          color: buttonCollor,
          textColor: textCollor,
          splashColor: splashColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }

  void _operations(String text) {

    if (text == '1'){

    }else if (text == '2'){

    }
  }
}

class Result extends StatelessWidget {
  final String resultText;

  Result(this.resultText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: AlignmentDirectional.centerEnd,
      child: Text(
        resultText,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


class Calculation extends StatelessWidget {
  final String calculationText;

  Calculation(this.calculationText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: AlignmentDirectional.centerEnd,
      child: Text(
        calculationText,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}

