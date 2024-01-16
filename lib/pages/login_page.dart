import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber[100],
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Icon(
                  Icons.person,
                  size: 160,
                  color: Colors.blueAccent,
                ),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    height: 30,
                    alignment: Alignment.center,
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(flex: 2, child: Text("Informe seu email")),
                        Expanded(flex: 3, child: Text("Email")),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  height: 30,
                  child: const Row(
                    children: [
                      Expanded(flex: 2, child: Text("Informe a senha:")),
                      Expanded(flex: 3, child: Text("Senha:")),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  color: const Color.fromARGB(255, 78, 173, 236),
                  height: 30,
                  child: const Text("Cadastrar"),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  color: Colors.green,
                  height: 30,
                  child: const Text("Botão"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
