import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/home/components/itemCardJobOfferApplicant.dart';
import 'package:bolsa_de_trabajo/screens/applicant/home/detailsScreenJobOfferApplicant.dart';
import 'package:bolsa_de_trabajo/utils/bounceButton.dart';
import 'package:bolsa_de_trabajo/utils/customPopup.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/services/jobOfferService.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class BodyHomeApplicant extends StatelessWidget{  
  final LoginFormProvider loginForm;
  const BodyHomeApplicant({Key? key, required this.loginForm}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    final JobOfferService jobOfferService = new JobOfferService();    
    return Stack(
      children: [
        Image.asset(
          "assets/images/cielo.jpg",
          width: 500,
          height: 700,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: FutureBuilder(                  
                  future: jobOfferService.getJobOfferAll(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      List<JobOffer>? jobofferlist = [];
                      jobofferlist = snapshot.data as List<JobOffer>?;
                      return GridView.builder(
                          itemCount: amountListJobOffer(snapshot.data),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: kDefaultPaddin/3,
                            crossAxisSpacing: kDefaultPaddin/3,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) => ItemCardJobOfferApplicant(
                            loginForm: loginForm,
                            jobOffer: jobofferlist![index],
                            press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreenJobOfferApplicant(
                                  loginForm: loginForm,
                                  jobOffer: jobofferlist![index],
                                ),
                              ),
                            ),
                          ),
                        );
                    }else if(!snapshot.hasData){
                      print("No trae los avisos del home.");
                      /* showDialog(context: context, 
                        builder: (_) => CustomPopup(
                          title: 'Resultado al traer los avisos',
                          message: 'No hay avisos publicados.',
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
                    }else if(snapshot.hasError){
                      print(snapshot.error);
                      return Text("Error al traer joboffer.");
                    }

                    return Center(child: CircularProgressIndicator(),);
                  },
                ),
              ),
            ),
          ],
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