import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/components/register.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10,
                   vertical: 70),   
      child: Column(
        children: [
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Seleccione su Rol como usuario del sistema: ",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: themeDrawerText, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Register(),       
        ],
      ),
    );
  }
}