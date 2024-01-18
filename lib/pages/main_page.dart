import 'package:estagioflutter/widgets/botao_sidebar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        drawer: Drawer(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Dados Cadastráis")),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Termo de Uso")),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Configuração")),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              //BotaoSideBarTeste00(titulo: "fornecedor"),

              //! <===============================================>

            //TODO Fazer implementacão das funcões:
              /*
            Cadastro de Produtos
            Controle de Estoque
            Alerta de Estoque Mínimo
            Fornecedores
            Rastreamento de Movimentação
            Local de Armazenamento
            Relatório Analítico
            Escanear Código de Barras
            Segurança e Controle de Acesso
            */
            ],
          ),
        )),
      ),
    );
  }
}
