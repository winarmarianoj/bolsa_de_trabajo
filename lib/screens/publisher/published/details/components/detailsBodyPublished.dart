import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published/details/components/productPublished.dart';
import 'package:flutter/material.dart';

class DetailsBodyPublished extends StatelessWidget {
  final JobOffer jobOfferApp;
  final LoginFormProvider loginForm;
  const DetailsBodyPublished({Key? key, required this.jobOfferApp, required this.loginForm}) : super(key: key);
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
                  height: 900,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.04),
                  padding: EdgeInsets.only(
                    top: size.height * 0.04,
                    left: kDefaultPaddin/2,
                    right: kDefaultPaddin/2,
                  ),
                  height: 800,
                   decoration: const BoxDecoration(
                    color: detailJobOfferApplied,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[  
                      const SizedBox(height: kDefaultPaddin / 2),                                  
                      ProductPublished(jobOfferApp: jobOfferApp, loginForm: loginForm),
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