import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed/details/detailsSubscribed.dart';
import 'package:flutter/material.dart';

class ApplicantSubscribedList extends StatelessWidget {
  final JobOfferApplication jobOfferApp;
  final LoginFormProvider loginForm;
  final VoidCallback? press;
  const ApplicantSubscribedList({
    Key? key,
    required this.jobOfferApp,
    required this.loginForm,
    this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Card(
          color: Color.fromARGB(255, 6, 216, 93),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsSubscribed(
                      loginForm: loginForm,
                      jobOfferApp: jobOfferApp,
                    ),
                  )
              );
            },
            title: Text(jobOfferApp.name + " " + jobOfferApp.surname),
            subtitle: Text(jobOfferApp.applied + " " + jobOfferApp.applicantID.toString() + " " + jobOfferApp.typeStudent),
            leading: CircleAvatar(
              child: Text(jobOfferApp.name.substring(0,1) + jobOfferApp.surname.substring(0,1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),        
      ),
    );
  }
}