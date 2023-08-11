import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final text;

  Questao(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
