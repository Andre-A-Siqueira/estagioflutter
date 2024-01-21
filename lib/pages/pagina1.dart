import 'package:flutter/material.dart';

class Pagina1Page extends StatefulWidget {
  const Pagina1Page({super.key});

  @override
  Pagina1PageState createState() => Pagina1PageState();
}

class Pagina1PageState extends State<Pagina1Page> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blueGrey,
        ),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Deslize para a esquerda',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 36,
              ),
              SizedBox(
                height: 3;0,
              ),
              Text(
                'Conheça as telas ao lado',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 36,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
