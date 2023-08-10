import 'package:flutter/material.dart';

class resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 153, 10, 255),
          foregroundColor: Colors.white,
        ),
        onPressed: onSelecao,
        child: Text(texto),
      ),
    );
  }
}
