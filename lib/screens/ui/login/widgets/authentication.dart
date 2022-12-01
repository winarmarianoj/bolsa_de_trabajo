import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/classes/purpleBox.dart';
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
            themeAuthBackgroundGradiantOne,
            themeAuthBackgroundGradiantTwo,
          ],
        ),
      );
}



