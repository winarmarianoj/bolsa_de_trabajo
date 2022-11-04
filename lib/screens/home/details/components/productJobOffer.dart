import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ProductJobOffer extends StatelessWidget {
  const ProductJobOffer({
    Key? key,
    required this.jobOffer,
  }) : super(key: key);

  final JobOffer jobOffer;

  @override
  Widget build(BuildContext context) {    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [                
                TextSpan(
                  text: "Area: " + jobOffer.area,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),         
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: "experience \n"),
                TextSpan(
                  text: "Area: " + jobOffer.experience,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),         
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: "modality \n"),
                TextSpan(
                  text: "Area: " + jobOffer.modality,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),           
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: "position \n"),
                TextSpan(
                  text: "Area: " + jobOffer.position,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),          
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: "category \n"),
                TextSpan(
                  text: "category: " + jobOffer.category,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),              
          Row(            
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: kDefaultPaddin),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                
                child: IconButton(
                  icon: 
                  Image.asset(
                    "assets/images/apply.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                  )
                  /*SvgPicture.asset(
                    "assets/icons/send.svg",
                    color: Colors.greenAccent,
                  )*/
                  ,
                  onPressed: () {
                    // TODO si el usuario es Applicant vera este boton
                  },
                ),
              ),             
            ],
          ),     
        ],
      ),
    );
  }
}
