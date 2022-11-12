import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/publisher/homePublisher.dart';
import 'package:bolsa_de_trabajo/screens/publisher/publish.dart';
import 'package:bolsa_de_trabajo/screens/publisher/subscribed/components/bodySubscribed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class Subscribed extends StatelessWidget{ 
  final LoginFormProvider loginForm; 
  final JobOffer jobOffer;
  const Subscribed({Key? key, required this.loginForm, required this.jobOffer}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodySubscribed(loginForm: loginForm, jobOffer: jobOffer,),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Color.fromARGB(255, 228, 137, 2),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/logo-utn.ba.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/home.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePublisher(
                  loginForm: loginForm,
                ),
              ),
            );
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/publicar.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Publish(
                  loginForm: loginForm,
                ),
              ),
            );
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/profile.svg",
            color: kTextColor,
          ),
          onPressed: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePublisher(
                  context,
                ),
              ),
            );*/
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/logout.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

}