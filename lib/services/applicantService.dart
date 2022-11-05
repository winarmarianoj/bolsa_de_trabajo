import 'dart:convert';
import 'dart:ffi';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/applicant/homeApplicant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApplicantService {

  Future<LoginFormProvider?> postulate(int jobOfferID, LoginFormProvider loginForm, BuildContext context) async{
    var url = Uri.parse('http://10.0.2.2:8082/joboffer/postulate');
    final response = await http.post(url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Charset' : 'utf-8'
    },
    body: jsonEncode(<String, int>{
      'jobofferID': jobOfferID,
      'applicantID': loginForm.id,
    }),
    ).timeout(Duration(seconds: 60));
    
    if(response.statusCode == 200){
      //String body = utf8.decode(response.bodyBytes);
      //final jsonData = jsonDecode(body);                        
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Resultado de su Postulación"),
          content: Text("Se ha postulado correctamente."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ).timeout(Duration(seconds: 20));
      Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeApplicant(loginForm: loginForm,))));
    }else{      
      print("Fallo traer la lista de Joboffers");
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Resultado del Loguin"),
          content: Text("Fallo la aplicación al Joboffers."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }
    
  }
  

}