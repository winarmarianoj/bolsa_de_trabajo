import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JobOfferService {
  Future<List<JobOffer>> getJobOfferAll() async{
    var url = Uri.parse('http://10.0.2.2:8082/joboffer/');
    List<JobOffer> joboffers = [];    
    final response = await http.get(url).timeout(Duration(seconds: 10));;
    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData){
        joboffers.add(
          JobOffer(id: item["id"], title: item["title"], description: item["description"], area: item["area"], 
          experience: item["experience"], modality: item["modality"], 
          position: item["position"], category: item["category"], body: item["body"], datePublished: '', 
          deleted: null, deletedDay: '', message: '', modifiedDay: '', state: ''));
      }
      return joboffers;
    }else{
      throw Exception("Fallo traer la lista de Joboffers");
    }    
  }

}