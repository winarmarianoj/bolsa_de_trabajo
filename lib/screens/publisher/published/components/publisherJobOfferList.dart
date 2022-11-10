import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published/details/detailsPublished.dart';
import 'package:flutter/material.dart';

class PublisherJobOfferList extends StatelessWidget {
  final JobOffer jobOfferApp;
  final LoginFormProvider loginForm;
  final VoidCallback? press;
  const PublisherJobOfferList({
    Key? key,
    required this.jobOfferApp,
    required this.loginForm,
    this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPublished(
                  loginForm: loginForm,
                  jobOfferApp: jobOfferApp,
                ),
              )
          );
        },
        title: Text(jobOfferApp!.title + " " + jobOfferApp!.description + " " + jobOfferApp!.area),
        subtitle: Text(jobOfferApp!.experience + " " + jobOfferApp!.modality + " " + jobOfferApp!.position + " " + jobOfferApp!.category),
        leading: CircleAvatar(
          child: Text(jobOfferApp!.title.substring(0,1)),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}