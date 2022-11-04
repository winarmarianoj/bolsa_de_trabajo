import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JobOfferService {
  var data;
  
    
  /*Future<List<JobOffer>> getJobOfferAll() async {
    var url = Uri.parse('..../get_products.php');
    var response = await http.post(url).timeout(Duration(seconds: 10));
    var data = jsonDecode(response.body);
    var records = List<Product>();
    for (data in data) {
      records.add(Product.fromJson(data));
    }
    return records;
  }*/

  Future<List<JobOffer>> getJobOfferAll() async{
    var url = Uri.parse('http://10.0.2.2:8082/joboffer/');
    var records = <JobOffer>[];
    /*http.get(url).then((response) => {
      data = jsonDecode(response.body)            
    })    
    .catchError((error) => print(error));*/

    List<JobOffer> joboffers = [];    
    final response = await http.get(url).timeout(Duration(seconds: 10));;
    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData){
        joboffers.add(
          JobOffer(id: item["id"], title: item["title"], description: item["description"], area: item["area"], experience: item["experience"], modality: item["modality"], position: item["position"], category: item["category"]));

      }
      return joboffers;
    }else{
      throw Exception("Fallo traer la lista de Joboffers");
    }
    
  }

}