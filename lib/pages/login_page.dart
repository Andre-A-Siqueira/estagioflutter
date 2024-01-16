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
          backgroundColor: const Color.fromARGB(157, 25, 98, 215),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Faça seu login",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 40),
                //! <=======================Estou trabalhando Aqui========================>
                Container(
                  width: double.infinity,
                  //color: Colors.cyan,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  height: 30,
                  alignment: Alignment.center,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 148, 81, 158),
                        )),
                  ),
                ),
                //! <=======================Estou trabalhando Aqui========================>
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  height: 30,
                  child: const Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(
                            "Informe a senha:",
                            style: TextStyle(color: Colors.white),
                          )),
                      Expanded(
                          flex: 3,
                          child: Text(
                            "Senha:",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 148, 81, 158))),
                      child: const Text(
                        "ENTRAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  height: 30,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  height: 30,
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w400),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          )),
    );
  }
}
