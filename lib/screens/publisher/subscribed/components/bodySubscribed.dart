import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed/components/applicantSubscribedList.dart';
import 'package:bolsa_de_trabajo/services/reportServicies.dart';
import 'package:bolsa_de_trabajo/utils/bounceButton.dart';
import 'package:bolsa_de_trabajo/utils/customPopup.dart';
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
              /*Object(                
                builder: (_) => CustomPopup(
                  title: 'Resultado de los suscriptos al aviso',
                  message: 'Nadie se ha suscripto aun a este aviso.',
                  buttonAccept: BounceButton(
                    buttonSize: ButtonSize.small,
                    type: ButtonType.secondary,
                    label: 'OK',
                    onPressed: () {                                
                      Navigator.pop(context);
                    },
                  ),
                )              
              );*/
               
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