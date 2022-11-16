import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/services/applicantService.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductJobOfferApplicant extends StatelessWidget {
  final JobOffer jobOffer;
  final LoginFormProvider loginForm;  
  const ProductJobOfferApplicant({
    Key? key,
    required this.jobOffer,required this.loginForm,
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
                      text: "Detalles: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferApplicantTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.body,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: kTextLightColor, fontWeight: FontWeight.bold),
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
                      text: "Area: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferApplicantTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.area,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: themeProductJobOfferApplicantTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPaddin/2),         
          Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [                
                    TextSpan(
                      text: "Experience: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferApplicantTextTitle, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: jobOffer.experience + " años.",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: themeProductJobOfferApplicantTextValue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),  
          const SizedBox(height: kDefaultPaddin/2),       
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                      text: "Modality: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferApplicantTextTitle, fontWeight: FontWeight.bold),
                    ),                
                TextSpan(
                  text: jobOffer.modality,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeProductJobOfferApplicantTextValue, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferApplicantTextTitle, fontWeight: FontWeight.bold),
                    ),                
                TextSpan(
                  text: jobOffer.position,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeProductJobOfferApplicantTextValue, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferApplicantTextTitle, fontWeight: FontWeight.bold),
                    ),              
                TextSpan(
                  text: jobOffer.category,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeProductJobOfferApplicantTextValue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),                   
          Row(            
            children: <Widget>[              
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.04),
                  padding: EdgeInsets.only(
                    top: size.height * 0.04,
                    left: 170,
                    right: 0,
                  ),
                  height: 230,
                  width: 330,
                   decoration: const BoxDecoration(
                    color: kFondo,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: IconButton(
                    icon: 
                    Image.asset(
                      "assets/images/apply.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      // TODO si el usuario es Applicant vera este boton
                      ApplicantService service = new ApplicantService();
                      service.postulate(jobOffer.id, loginForm, context);
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
