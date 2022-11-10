import 'package:bolsa_de_trabajo/models/JobOfferApplication.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/applied/details/detailsJobOfferApplied.dart';
import 'package:flutter/material.dart';

class ApplicantAppliedList extends StatelessWidget {
  final JobOfferApplication jobOfferApp;
  final LoginFormProvider loginForm;
  final VoidCallback? press;
  const ApplicantAppliedList({
    Key? key,
    required this.jobOfferApp,
    required this.loginForm,
    this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsJobOfferApplied(
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
    );
  }
}