import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/components/itemJobOfferApplied.dart';
import 'package:bolsa_de_trabajo/screens/applicant/details/detailsJobOfferApplied.dart';
import 'package:bolsa_de_trabajo/services/reportServicies.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class BodyApplied extends StatelessWidget{  
  final LoginFormProvider loginForm;
  const BodyApplied({Key? key, required this.loginForm}) : super(key: key);  

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
          future: reportService.getJobOfferApplied(loginForm),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              List<JobOfferApplication>? jobOfferAppList = [];
              jobOfferAppList = snapshot.data as List<JobOfferApplication>?;
              return ListView.builder(
                  itemCount: amountListJobOffer(snapshot.data),                  
                  itemBuilder: (context, index) => ItemJobOfferApplied(
                    loginForm: loginForm,
                    jobOfferApp: jobOfferAppList![index],
                    /*press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsJobOfferApplied(
                          loginForm: loginForm,
                          jobOfferApp: jobOfferAppList![index],
                        ),
                      ),
                    ),*/
                  ),
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