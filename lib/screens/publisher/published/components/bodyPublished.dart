import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published/components/publisherJobOfferList.dart';
import 'package:bolsa_de_trabajo/services/reportServicies.dart';
import 'package:bolsa_de_trabajo/utils/bounceButton.dart';
import 'package:bolsa_de_trabajo/utils/customPopup.dart';
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
              /* showDialog(context: context, 
                builder: (_) => CustomPopup(
                  title: 'Avisos publicados',
                  message: 'Error al traer jobofferApplied.',
                  buttonAccept: BounceButton(
                    buttonSize: ButtonSize.small,
                    type: ButtonType.secondary,
                    label: 'OK',
                    onPressed: () {                                
                      Navigator.pop(context);
                    },
                  ),
                )
              ); */
            }

            return Center(child: CircularProgressIndicator(),);
          },
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