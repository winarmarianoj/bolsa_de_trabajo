import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published/components/publisherJobOfferList.dart';
import 'package:bolsa_de_trabajo/services/reportServicies.dart';
import 'package:flutter/material.dart';

class BodyPublished extends StatelessWidget{  
  final LoginFormProvider loginForm;
  const BodyPublished({Key? key, required this.loginForm}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    final ReportService reportService = new ReportService();
    return Stack(
      children: [
        Image.asset(
          "assets/images/cielo.jpg",
          width: 500,
          height: 700,
          fit: BoxFit.cover,
        ),
        FutureBuilder(                  
          future: reportService.getJobOfferPublished(loginForm),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              List<JobOffer>? jobOfferAppList = [];
              jobOfferAppList = snapshot.data as List<JobOffer>?;
              return ListView.builder(
                  itemCount: amountListJobOffer(snapshot.data),                  
                  itemBuilder: (context, index) => PublisherJobOfferList(
                    loginForm: loginForm,
                    jobOffer: jobOfferAppList![index],
                  ),
                );                
            }else if(snapshot.hasError){
              print(snapshot.error);
              return Text("Error al traer jobofferApplied");
            }

            return Center(child: CircularProgressIndicator(),);
          },
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Ingresa texto aquí"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),        
      ]
    );
    
  }

  int amountListJobOffer(info){
    int count = 0;
    for (var data in info){
      count++;
    }
    return count;
  }

}