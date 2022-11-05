import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class DescriptionJobOfferApplicant extends StatelessWidget {
  const DescriptionJobOfferApplicant({
    Key? key,
    required this.jobOffer,
  }) : super(key: key);

  final JobOffer jobOffer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                    left: titleCenter,
                  ),
            child: Text(
              jobOffer.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: kTitle, fontWeight: FontWeight.bold),
            ),
          ),
         const SizedBox(height: kDefaultPaddin),
         Text(
            jobOffer.description,            
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: descriptionDetails, fontWeight: FontWeight.bold),          
          ),                     
        ]
      ),
    );
  }
}
