import 'package:flutter/material.dart';

class Applicant {
  final String name, lastName, identification, phoneNumber, username, password, role, jwt;
  final int id;

  Applicant({
    required this.id,
    required this.name,
    required this.lastName,
    required this.identification,
    required this.phoneNumber,
    required this.username,
    required this.password,
    required this.role,
    required this.jwt,
  });
    
}