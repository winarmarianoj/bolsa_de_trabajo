import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published/details/detailsPublished.dart';
import 'package:flutter/material.dart';

class PublisherJobOfferList extends StatelessWidget {
  final JobOffer jobOffer;
  final LoginFormProvider loginForm;
  final VoidCallback? press;
  const PublisherJobOfferList({
    Key? key,
    required this.jobOffer,
    required this.loginForm,
    this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Card(
          color: Color.fromARGB(255, 4, 184, 184),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPublished(
                      loginForm: loginForm,
                      jobOffer: jobOffer,
                    ),
                  )
              );
            },
            title: Text(jobOffer.title + " " + jobOffer.description + " " + jobOffer.area),
            subtitle: Text(jobOffer.experience + " " + jobOffer.modality + " " + jobOffer.position + " " + jobOffer.category),
            leading: CircleAvatar(
              child: Text(jobOffer.title.substring(0,1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),        
      ),
    );
  }
}