import 'package:flutter/material.dart';

class UTN extends StatelessWidget{
   @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Image.asset("assets/images/LogoUTN.png",
            width: 140,
            height: 40,
            fit: BoxFit.cover,
          )
        ),
      ),          
    );
  }
}