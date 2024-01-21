import 'package:estagioflutter/shared/widgets/text_label.dart';
import 'package:flutter/material.dart';

class CadastrarProdutosPage extends StatefulWidget {
  const CadastrarProdutosPage({super.key});

  @override
  State<CadastrarProdutosPage> createState() => _CadastrarProdutosState();
}

class _CadastrarProdutosState extends State<CadastrarProdutosPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController quantidadeController = TextEditingController();
  TextEditingController validadeController = TextEditingController();
  TextEditingController dataEntradaController = TextEditingController();
  DateTime? dataEntrada;
  TextEditingController descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Cadastro de Produtos")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TextLabel(texto: "Nome do Produto"),
                TextField(
                  controller: nomeController,
                ),
                const SizedBox(height: 10),
                const TextLabel(texto: "Quantidade"),
                TextField(
                  controller: quantidadeController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                const TextLabel(texto: "Data de Entrada"),
                TextField(
                  controller: dataEntradaController,
                  readOnly: true,
                  onTap: () async {
                    var data = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900, 5, 1),
                        lastDate: DateTime(2025, 10, 23));
                    if (data != null) {
                      String dataFormatada =
                          "${data.day}/${data.month}/${data.year}";
                      dataEntradaController.text = dataFormatada;
                      dataEntrada = data;
                    }
                  },
                ),
                const TextLabel(texto: "Validade (opcional)"),
                TextField(
                  controller: validadeController,
                ),
                const SizedBox(height: 10),
                const TextLabel(texto: "Descrição do Produto"),
                TextField(
                  controller: descricaoController,
                  maxLines: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
