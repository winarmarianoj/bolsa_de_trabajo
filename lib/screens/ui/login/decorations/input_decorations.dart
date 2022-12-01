import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: themeInputDecorationLogin),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: themeInputDecorationLogin, width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: themeInputDecorationLoginLabel),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: themeInputDecorationLogin,
              )
            : null);
  }
}