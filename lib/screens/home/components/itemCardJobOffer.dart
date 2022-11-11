import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ItemCardJobOffer extends StatelessWidget {
  final JobOffer? jobOffer;
  final VoidCallback? press;
  const ItemCardJobOffer({
    Key? key,
    this.jobOffer,
    this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: size.height * 0.01),
            padding: EdgeInsets.only(
              top: size.height * 0.01,
              left: kDefaultPaddin/2,
              right: kDefaultPaddin/2,
            ),
        decoration: const BoxDecoration(
            color: kFondo,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(                  
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    jobOffer!.title,
                    style: const TextStyle(color: cardTitle, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    jobOffer!.description,
                    style: const TextStyle(color: cardDescription, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                child: Center(
                  child: Text(
                    jobOffer!.category,
                    style: const TextStyle(color: cardCategory, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    jobOffer!.modality,
                    style: const TextStyle(color: cardModality, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    jobOffer!.position,
                    style: const TextStyle(color: cardPosition, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Area: " + jobOffer!.area,
                    style: const TextStyle(color: cardArea, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Experiencia: " + jobOffer!.experience + " años",
                    style: const TextStyle(color: cardExperience, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}