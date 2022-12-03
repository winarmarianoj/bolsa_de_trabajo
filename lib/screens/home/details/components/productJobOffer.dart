import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ProductJobOffer extends StatelessWidget {
  final JobOffer jobOffer;  
  const ProductJobOffer({
    Key? key,
    required this.jobOffer,
  }) : super(key: key);  

  @override
  Widget build(BuildContext context) {    
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: kDefaultPaddin),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Detalles: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.body,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Area: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.area,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: themeProductJobOfferPublisherTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPaddin/2),         
          Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [                
                    TextSpan(
                      text: "Experience: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: jobOffer.experience + " años.",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: themeProductJobOfferPublisherTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),  
          const SizedBox(height: kDefaultPaddin/2),       
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                      text: "Modality: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),                
                TextSpan(
                  text: jobOffer.modality,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeProductJobOfferPublisherTextValue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),   
          const SizedBox(height: kDefaultPaddin/2),        
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                      text: "Position: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),                
                TextSpan(
                  text: jobOffer.position,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeProductJobOfferPublisherTextValue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),  
          const SizedBox(height: kDefaultPaddin/2),        
          RichText(
            text: TextSpan(
              children: [  
                TextSpan(
                      text: "Category: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),              
                TextSpan(
                  text: jobOffer.category,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeProductJobOfferPublisherTextValue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
