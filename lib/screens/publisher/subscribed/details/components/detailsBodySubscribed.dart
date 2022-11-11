import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed/details/components/productSubscribed.dart';
import 'package:flutter/material.dart';

class DetailsBodySubscribed extends StatelessWidget {
  final JobOfferApplication jobOfferApp;
  final LoginFormProvider loginForm;
  const DetailsBodySubscribed({Key? key, required this.jobOfferApp, required this.loginForm}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                  height: 1400,
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.001),
                  padding: EdgeInsets.only(
                    top: size.height * 0.001,
                    left: kDefaultPaddin/2,
                    right: kDefaultPaddin/2,
                  ),
                  height: 1400,
                  width: 500,
                   decoration: const BoxDecoration(
                    color: detailJobOfferApplied,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[ 
                      ProductSubscribed(jobOfferApp: jobOfferApp, loginForm: loginForm),
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