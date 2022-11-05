import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/details/components/descriptionJobOfferApplicant.dart';
import 'package:bolsa_de_trabajo/screens/applicant/details/components/productJobOfferApplicant.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';

class DetailsBodyJobOfferApplicant extends StatelessWidget {
  final JobOffer jobOffer;
  final LoginFormProvider loginForm;
  const DetailsBodyJobOfferApplicant({Key? key, required this.jobOffer, required this.loginForm}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(      
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/cielo.jpg",
                  width: 500,
                  height: 800,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.04),
                  padding: EdgeInsets.only(
                    top: size.height * 0.04,
                    left: kDefaultPaddin/2,
                    right: kDefaultPaddin/2,
                  ),
                  height: 700,
                   decoration: const BoxDecoration(
                    color: kFondo,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[                                            
                      DescriptionJobOfferApplicant(jobOffer: jobOffer),
                      const SizedBox(height: kDefaultPaddin / 2),                                  
                      ProductJobOfferApplicant(jobOffer: jobOffer, loginForm: loginForm),
                      const SizedBox(height: kDefaultPaddin / 2),
                    ],
                  ),                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}