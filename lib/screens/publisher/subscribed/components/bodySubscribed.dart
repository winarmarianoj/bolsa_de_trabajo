import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed/components/applicantSubscribedList.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed/components/messageError.dart';
import 'package:bolsa_de_trabajo/services/reportServicies.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class BodySubscribed extends StatelessWidget{  
  final LoginFormProvider loginForm;
  final JobOffer jobOffer;
  const BodySubscribed({Key? key, required this.loginForm, required this.jobOffer}) : super(key: key);  

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
          future: reportService.getAllAppliedByJobOffer(jobOffer.id, loginForm),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              List<JobOfferApplication>? jobOfferAppList = [];
              jobOfferAppList = snapshot.data as List<JobOfferApplication>?;
              return ListView.builder(
                  itemCount: amountListJobOffer(snapshot.data),                  
                  itemBuilder: (context, index) => ApplicantSubscribedList(
                    loginForm: loginForm,
                    jobOfferApp: jobOfferAppList![index],
                  ),
                );
            }else if(!snapshot.hasData){
              print("Nadie se ha subscripto a este aviso.");
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageError(
                    jobOffer: jobOffer,
                    loginForm: loginForm,
                  ),
                ),
              );*/              
              //return Text("Nadie se ha subscripto a este aviso " + jobOffer.title);
              return Column(
                children: <Widget> [
                  RichText(
                    text: TextSpan(
                      children: [ 
                        TextSpan(
                          text: "Resultado Consulta de Subscriptos",
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                        ),               
                        TextSpan(
                          text: "Nadie se ha subscripto a este aviso " + jobOffer.id.toString(),
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }else if(snapshot.hasError){
              print(snapshot.error);
              return Text("Error al traer jobofferApplied");
            }

            return Center(child: CircularProgressIndicator(),);
          },
        ),        
      ],
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