import 'dart:convert';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:http/http.dart' as http;

class ReportService {

  Future<List<JobOfferApplication>> getJobOfferApplied(LoginFormProvider loginForm) async{
    print("El ID es " + loginForm.id.toString());
    var url = Uri.parse('http://10.0.2.2:8082/flutter/reports/applied/'+loginForm.id.toString());
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