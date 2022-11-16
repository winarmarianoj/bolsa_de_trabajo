import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Card(
        elevation: 0,        
        child: Padding(          
          padding: EdgeInsets.all(8),
          child: this.child,
        ),
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
                2,
                7,
              ),
            )
          ]);
}