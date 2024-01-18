//import 'package:estagioflutter/pages/login_page.dart';
//import 'package:estagioflutter/pages/login_page.dart';
import 'package:estagioflutter/pages/main_page.dart';
//import 'package:estagioflutter/pages/teste_tela.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

//import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gestão de Estoque',
        theme: ThemeData(
            useMaterial3: true,
            textTheme: const TextTheme(),
            colorScheme: ColorScheme.fromSeed(
                    seedColor: const Color.fromARGB(255, 59, 136, 184))
                .copyWith(background: const Color.fromRGBO(226, 217, 81, 1))),
        home: const MainPage(
            //home: const LoginPage(
            /*home: const TelaPrincipal(*/
            /*home: const MyHomePage(
            title: 'Gerenciador de estoque',
            style: TextStyle())
           */
            ));
  }
}
