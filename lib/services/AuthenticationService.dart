import 'dart:convert';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/applicant/homeApplicant.dart';
import 'package:bolsa_de_trabajo/screens/publisher/homePublisher.dart';
import 'package:bolsa_de_trabajo/utils/bounceButton.dart';
import 'package:bolsa_de_trabajo/utils/customPopup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthenticationService {

  Future<LoginFormProvider?> getLoginUser(LoginFormProvider loginForm, BuildContext context) async{
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
      loginForm.isLoading = true;
      print("Estoy en Login.dart - users es :" + loginForm.email + " y " + loginForm.role);                    
      if(loginForm.role == "APPLICANT"){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeApplicant(loginForm: loginForm,)))); 
      }else if(loginForm.role == "PUBLISHER"){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePublisher(loginForm: loginForm,))));
      }else if(loginForm.role == "UTN"){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Home())));
      } 
      return loginForm;
    }else{
      print("Fallo traer la lista de Joboffers");
      loginForm.isLoading = false;
      //return loginForm;
      showDialog(context: context, 
        builder: (_) => CustomPopup(
            title: 'Resultado del Login',
            message: 'Error en el proceso de login. Incorrecto password o su usuario no existe.',
            buttonAccept: BounceButton(
              buttonSize: ButtonSize.small,
              type: ButtonType.primary,
              label: 'OK',
              onPressed: () {
                /*context.read<CreditCardListBloc>().add(
                      CreditCardListEvent.toggleLock(
                        card: card,
                      ),
                    );*/
                Navigator.pop(context);
              },
            ),
          )
      );        
    }
    
  }
  

}