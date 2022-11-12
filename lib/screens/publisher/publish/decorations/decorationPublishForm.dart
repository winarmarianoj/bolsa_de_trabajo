import 'package:flutter/material.dart';

class DecorationPublishForm {
  static InputDecoration inputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 214, 117, 5)),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 214, 117, 5), width: 2)),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: Color.fromARGB(255, 214, 117, 5),
              )
            : null);
  }
}