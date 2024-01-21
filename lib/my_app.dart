import 'package:estagioflutter/pages/main_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        home: const MainPage());
  }
}
