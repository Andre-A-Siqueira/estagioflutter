import 'package:flutter/material.dart';

class BotaoSideBarTeste00 extends StatelessWidget {
  final String titulo;

  const BotaoSideBarTeste00({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: Text(titulo),
              ),
              onTap: () {
                // Adicione aqui a lógica que você deseja executar ao tocar no item
              },
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            // Adicione outros itens do Drawer conforme necessário
          ],
        ),
      ),
    );
  }
}
