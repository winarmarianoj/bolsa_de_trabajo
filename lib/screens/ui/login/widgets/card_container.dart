import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class CardContainers extends StatelessWidget {
  final Widget child;

  const CardContainers({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: this.child,
        ),

        // width: double.infinity,
        // padding: EdgeInsets.all(20),
        // decoration: _createCardShape(),
        // child: this.child,
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
          color: themeCardContainerBoxDecorationCardShape,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: themeCardContainerBoxDecorationBoxShadow,
              blurRadius: 15,
              offset: Offset(
                0,
                5,
              ),
            )
          ]);
}