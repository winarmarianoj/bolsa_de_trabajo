import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ProductPublished extends StatelessWidget {
  final JobOffer jobOfferApp;
  final LoginFormProvider loginForm;  
  const ProductPublished({
    Key? key,
    required this.jobOfferApp, required this.loginForm,
  }) : super(key: key);  

  @override
  Widget build(BuildContext context) {    
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[          
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "JobOfferID: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.id.toString(),
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Title: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.title,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Description: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.description,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Area: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.area,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Body: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.body,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Experience: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.experience,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Modality: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.modality,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.position,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.category,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),              
        ],
      ),
    );
  }
}
