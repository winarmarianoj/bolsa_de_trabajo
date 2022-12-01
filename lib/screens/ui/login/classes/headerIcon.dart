import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 3),
        child: const Icon(
          Icons.person_add,
          color: themePersonAddHeaderIcon,
          size: 80,
        ),
      ),
    );
  }
}