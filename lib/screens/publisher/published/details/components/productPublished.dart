import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class ProductPublished extends StatelessWidget {
  final JobOffer jobOffer;
  final LoginFormProvider loginForm;  
  const ProductPublished({
    Key? key,
    required this.jobOffer, required this.loginForm,
  }) : super(key: key);  

  @override
  Widget build(BuildContext context) {    
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[          
          const SizedBox(height: kDefaultPaddin/2),
          RichText(
                text: TextSpan(
                  children: [ 
                    TextSpan(
                      text: "JobOfferID: ",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.id.toString(),
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.title,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.description,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.area,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.body,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.experience,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.modality,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                          color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                    ),               
                    TextSpan(
                      text: jobOffer.position,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                      color: themeProductJobOfferPublisherTextTitle, fontWeight: FontWeight.bold),
                ),               
                TextSpan(
                  text: jobOffer.category,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
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
                    //color: kFondo,
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
                      "assets/images/subscribers.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Subscribed(
                            loginForm: loginForm,
                            jobOffer: jobOffer,
                          ),
                        ),
                      );
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
