import 'package:flutter/material.dart';

class InkwellSideBar extends StatelessWidget {
  final String texto;
  final Widget rota;
  const InkwellSideBar({super.key, required this.texto, required this.rota});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          width: double.infinity,
          child: Text(texto)),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => rota));
      },
    );
  }
}
