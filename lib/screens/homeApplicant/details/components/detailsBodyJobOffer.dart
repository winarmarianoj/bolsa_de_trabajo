import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/screens/home/details/components/descriptionJobOffer.dart';
import 'package:bolsa_de_trabajo/screens/home/details/components/productJobOffer.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:flutter_svg/svg.dart';

class DetailsBodyJobOffer extends StatelessWidget {
  final JobOffer jobOffer;

  const DetailsBodyJobOffer({Key? key, required this.jobOffer}) : super(key: key);
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
                      DescriptionJobOffer(jobOffer: jobOffer),
                      const SizedBox(height: kDefaultPaddin / 2),                                  
                      ProductJobOffer(jobOffer: jobOffer),
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