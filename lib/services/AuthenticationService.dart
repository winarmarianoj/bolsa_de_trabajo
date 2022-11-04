import 'dart:convert';
import 'package:bolsa_de_trabajo/providers%20copy/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/homeApplicant/homeApplicant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthenticationService {

  Future<LoginFormProvider> getLoginUser(LoginFormProvider loginForm, BuildContext context) async{
    var url = Uri.parse('http://10.0.2.2:8082/auth/loginflutter');
    final response = await http.post(url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': loginForm.email,
      'password': loginForm.password,
    }),
    ).timeout(Duration(seconds: 10));
    var roles = <String>["ADMIN", "APPLICANT", "PUBLISHER", "UTN"];

    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body); 
      loginForm.id = jsonData['id'];
      loginForm.email = jsonData['username'];
      loginForm.jwt = jsonData['jwt'];
      loginForm.role = jsonData['role'];  
      print("Estoy en Login.dart - users es :" + loginForm.email + " y " + loginForm.role);                    
      if(loginForm.role == "APPLICANT"){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeApplicant()))); 
      }else if(loginForm.role == "PUBLISHER"){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Home())));
      }else if(loginForm.role == "UTN"){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Home())));
      } 
      return loginForm;
    }else{
      throw Exception("Fallo traer la lista de Joboffers");
      /*showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Resultado del Loguin"),
          content: Text("El usuario: " + user + " con password " + pass + " no exite o es incorrecto."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );*/
    }
    
  }
  

}