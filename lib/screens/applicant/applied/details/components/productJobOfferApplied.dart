import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ProductJobOfferApplied extends StatelessWidget {
  final JobOfferApplication jobOfferApp;
  final LoginFormProvider loginForm;  
  const ProductJobOfferApplied({
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
          const SizedBox(height: kDefaultPaddin),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "JobOfferApplicantID: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.jobOfferApplicantID.toString(),
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
                      text: "Applied: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.applied,
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
                      text: "DeletedDay: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.deletedDay,
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
                      text: "JobOfferID: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.jobOfferID.toString(),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.category,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      text: "Descripción Categoría: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferAppliedTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.categoryDescription,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),     
        ],
      ),
    );
  }
}
