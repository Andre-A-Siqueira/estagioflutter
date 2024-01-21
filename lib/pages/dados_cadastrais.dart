import 'package:estagioflutter/repositories/linguagens_repository.dart';
import 'package:estagioflutter/repositories/nivel_repository.dart';
import 'package:estagioflutter/shared/widgets/text_label.dart';
import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({
    super.key,
  });

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var niveis = [];
  var linguagens = [];
  var linguagensSelecionada = [];
  var nivelSelecionado = "";
  double salarioEscolido = 1000;
  int tempoExperiencia = 1;

  @override
  void initState() {
    // /TOD: implement initState
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i <= quantidadeMaxima; i++) {
      itens.add(
        DropdownMenuItem(
          value: i,
          child: Text(i.toString()),
        ),
      );
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Meus dados")),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: ListView(children: [
              const TextLabel(texto: "Nome"),
              TextField(
                controller: nomeController,
              ),
              const TextLabel(texto: "Data de nascimento"),
              TextField(
                controller: dataNascimentoController,
                readOnly: true,
                onTap: () async {
                  var data = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900, 5, 1),
                      lastDate: DateTime(2025, 10, 23));
                  if (data != null) {
                    dataNascimentoController.text = data.toString();
                    dataNascimento = data;
                  }
                },
              ),
              const TextLabel(texto: "Nivel de experiencia"),
              Column(
                  children: niveis
                      .map(
                        (nivel) => RadioListTile(
                          dense: true,
                          title: Text(nivel.toString()),
                          selected: nivelSelecionado == nivel,
                          value: nivel.toString(),
                          groupValue: nivelSelecionado,
                          onChanged: (value) {
                            debugPrint(value);
                            setState(() {
                              nivelSelecionado = value.toString();
                            });

                            debugPrint(nivelSelecionado);
                          },
                        ),
                      )
                      .toList()),
              const TextLabel(texto: "Linguagens preferidas"),

              Column(
                children: linguagens
                    .map(
                      (linguagem) => CheckboxListTile(
                          dense: true,
                          title: Text(linguagem),
                          value: linguagensSelecionada.contains(linguagem),
                          onChanged: (bool? value) {
                            if (value!) {
                              setState(() {
                                linguagensSelecionada.add(linguagem);
                              });
                            } else {
                              setState(() {
                                linguagensSelecionada.remove(linguagem);
                              });
                            }
                          }),
                    )
                    .toList(),
              ),
              const TextLabel(texto: "Tempo de experiencia"),
              DropdownButton(
                  value: tempoExperiencia,
                  isExpanded: true,
                  items: returnItens(50),
                  onChanged: (value) {
                    setState(() {
                      tempoExperiencia = int.parse(value.toString());
                    });
                  }),

              TextLabel(
                  texto:
                      "Pretensão Salarial. \$ ${salarioEscolido.round().toString()}"),
              Slider(
                  min: 1000,
                  max: 10000,
                  value: salarioEscolido,
                  onChanged: (value) {
                    setState(() {
                      salarioEscolido = value;
                    });
                    debugPrint(value.toString());
                  }),
              //! <===============================================>
              TextButton(
                  onPressed: () {
                    debugPrint(nomeController.toString());
                    debugPrint(dataNascimento.toString());
                    debugPrint(nivelSelecionado.toString());
                    debugPrint(linguagensSelecionada.toString());
                    debugPrint(tempoExperiencia.toString());
                    debugPrint(salarioEscolido.round().toString());
                  },
                  child: const Text("Salvar"))
            ])),
      ),
    );
  }
}
