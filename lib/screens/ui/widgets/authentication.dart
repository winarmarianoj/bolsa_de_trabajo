import 'package:bolsa_de_trabajo/screens/ui/classes/purpleBox.dart';
import 'package:flutter/material.dart';


class Authentication extends StatelessWidget {
  final Widget child;

  const Authentication({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _purpleBackground(),
      //width: double.infinity,
      //height: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              PurpleBox(),
              //HeaderIcon(),
              this.child,
            ],
          ),
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



