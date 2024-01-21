import 'package:flutter/material.dart';

class BotaoTela extends StatelessWidget {
  final String titulo;

  BotaoTela(this.titulo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Adicione aqui a navegação para a tela correspondente
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Navegar para $titulo')),
          );
        },
        child: Text(titulo),
      ),
    );
  }
}
