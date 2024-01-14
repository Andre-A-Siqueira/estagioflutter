import 'package:estagioflutter/pages/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gestão de Estoque',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //primarySwatch: Colors.amber[600],
            useMaterial3: true,
            textTheme: const TextTheme()),
        home: const LoginPage(
            /*home: const MyHomePage(
            title: 'Gerenciador de estoque',
            style: TextStyle())
           */
            ));
  }
}
