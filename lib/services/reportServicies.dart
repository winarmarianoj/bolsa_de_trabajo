import 'dart:convert';
import 'dart:ffi';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/homeApplicant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ReportService {

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

  Future<List<JobOfferApplication>> getJobOfferApplied(LoginFormProvider loginForm) async{
    print("El ID es " + loginForm.id.toString());
    var url = Uri.parse('http://10.0.2.2:8082/report-lists/flutterapplied/'+loginForm.id.toString());
    List<JobOfferApplication> jobOfferApp = [];    
    final response = await http.get(url).timeout(Duration(seconds: 10));;
    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData){
        jobOfferApp.add(
          JobOfferApplication(jobOfferApplicantID: item["jobOfferApplicantID"], applied: item["applied"], 
          deletedDay: item["deletedDay"], applicantID: item["applicantID"], 
          name: item["name"], surname: item["surname"], 
          dni: item["dni"], email: item["email"], 
          phoneNumber: item["phoneNumber"], typeStudent: item["typeStudent"], 
          jobOfferID: item["jobOfferID"], title: item["title"], 
          description: item["description"], area: item["area"], 
          body: item["body"], experience: item["experience"], 
          modality: item["modality"], position: item["position"], 
          category: item["category"], categoryDescription: item["categoryDescription"], 
          datePublished: item["datePublished"], modifiedDay: item["modifiedDay"], 
          jobOfferDeletedDay: item["jobOfferDeletedDay"], state: item["state"]));
      }
      return jobOfferApp;
    }else{
      throw Exception("Fallo traer la lista de jobOfferApp");
    }
  }
  

}