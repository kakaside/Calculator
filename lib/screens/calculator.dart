import 'package:calculator/components/editor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String textCalculation = '';
  String textResult = '';

  void numClick(String text) {
    setState(() {
      textCalculation += text;
    });
  }
  void allClear(String text) {
    setState(() {
      textCalculation ='';
      textResult = '';
    });
  }
  void clear(String text) {
    setState(() {
      textResult = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(textCalculation);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
     textResult = textCalculation;
      textResult = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Calculation(textCalculation),
              Result(textResult),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonStyle(
                    text: 'AC',
                    buttonCollor: Colors.red,
                    textCollor: Colors.white,
                    splashColor: Colors.black,
                    callback: allClear,
                  ),
                  ButtonStyle(
                    text: 'C',
                    buttonCollor: Colors.red,
                    textCollor: Colors.white,
                    splashColor: Colors.black,
                    callback: clear,
                  ),
                  ButtonStyle(
                    text: '%',
                    buttonCollor: Colors.black54,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '/',
                    buttonCollor: Colors.black54,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonStyle(
                    text: '7',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '8',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '9',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '*',
                    buttonCollor: Colors.black54,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonStyle(
                    text: '4',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '5',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '6',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '-',
                    buttonCollor: Colors.black54,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonStyle(
                    text: '1',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '2',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '3',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '+',
                    buttonCollor: Colors.black54,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonStyle(
                    text: '.',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '0',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '00',
                    buttonCollor: Colors.black,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: numClick,
                  ),
                  ButtonStyle(
                    text: '=',
                    buttonCollor: Colors.black54,
                    textCollor: Colors.white,
                    splashColor: Colors.red,
                    callback: evaluate,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
