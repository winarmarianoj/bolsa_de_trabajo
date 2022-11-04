import 'package:flutter/material.dart';

class LoginUser {
  final String username, jwt, role;
  final int id;

  LoginUser({
    required this.id,
    required this.username,
    required this.jwt,
    required this.role,
  });

  factory LoginUser.fromJson(Map<String, dynamic> json) {
    var roles = <String>["ADMIN", "APPLICANT", "PUBLISHER", "UTN"];
    String roleLocated = "";
    for (var element in roles) {
      if(element == json['role']){
        roleLocated = element;
      }
    }
    
    return LoginUser(
      id: json['id'],
      username: json['username'],
      jwt: json['jwt'],
      role: roleLocated,
    );
  }

  

}