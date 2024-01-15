import 'package:estagioflutter/widgets/botao_tela.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoTela('Cadastro de Produtos'),
            BotaoTela('Controle de Estoque'),
            BotaoTela('Alerta de Estoque Mínimo'),
            BotaoTela('Fornecedores'),
            BotaoTela('Rastreamento de Movimentação'),
            BotaoTela('Local de Armazenamento'),
            BotaoTela('Relatório Analítico'),
            BotaoTela('Escanear Código de Barras'),
            BotaoTela('Segurança e Controle de Acesso'),
          ],
        ),
      ),
    );
  }
}

