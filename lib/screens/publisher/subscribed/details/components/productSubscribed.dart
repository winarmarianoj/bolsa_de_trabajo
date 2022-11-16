import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ProductSubscribed extends StatelessWidget {
  final JobOfferApplication jobOfferApp;
  final LoginFormProvider loginForm;  
  const ProductSubscribed({
    Key? key,
    required this.jobOfferApp, required this.loginForm,
  }) : super(key: key);  

  @override
  Widget build(BuildContext context) {    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.01, vertical: 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[          
          const SizedBox(height: kDefaultPaddin),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "JobOfferApplicantID: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.jobOfferApplicantID.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.applied,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.deletedDay,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "ApplicantID: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.applicantID.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Name: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Surname: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.surname,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "DNI: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.dni,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Email: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.email,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "PhoneNumber: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.phoneNumber,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Type Student: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.typeStudent,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.jobOfferID.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.description,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.area,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.body,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.experience,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.modality,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.position,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.category,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Descripción Categoría: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.categoryDescription,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Date Published: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.datePublished,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Modified Day: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.modifiedDay,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Deleted Day: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.jobOfferDeletedDay,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "Deleted: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.jobOfferDeleted.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "State: ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOfferApp.state,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: themePRoductJobOFferSubscribedTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: kDefaultPaddin/2), 
        ],
      ),
    );
  }
}
