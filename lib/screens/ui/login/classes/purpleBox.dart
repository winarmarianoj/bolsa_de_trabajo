import 'package:bolsa_de_trabajo/screens/ui/login/classes/cuvl.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/classes/utn.dart';
import 'package:flutter/material.dart';

class PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height/4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          /*Positioned(child: Bubble(), top: 95, left: 25),
          Positioned(child: Bubble(), top: 90, left: 30),
          Positioned(child: Bubble(), top: -40, left: -30),
          Positioned(child: Bubble(), top: -50, right: -20),
          Positioned(child: Bubble(), bottom: -50, left: 10),
          Positioned(child: Bubble(), bottom: 120, right: 20),*/
          Positioned(child: CUVL(), top: 70, right: 2),
          Positioned(child: UTN(), top: 70, left: 2),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 79, 156, 63),
            Color.fromRGBO(90, 70, 178, 1)
          ],
        ),
      );
}
