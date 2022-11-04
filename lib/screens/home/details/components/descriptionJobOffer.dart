import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class DescriptionJobOffer extends StatelessWidget {
  const DescriptionJobOffer({
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
          Text(
            jobOffer.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: kTitle, fontWeight: FontWeight.bold),
          ),
         const SizedBox(height: kDefaultPaddin),
         Text(
            jobOffer.description,
            style: const TextStyle(height: 1, color: kTitle),            
          ),
          const SizedBox(height: kDefaultPaddin*2),      
        ]
      ),
    );
  }
}
