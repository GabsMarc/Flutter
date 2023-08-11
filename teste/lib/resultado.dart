import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Slk bom de mais!!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 25),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 153, 10, 255))),
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
