import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/homePublisher.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class MessageError extends StatelessWidget{  
  final JobOffer jobOffer;
  final LoginFormProvider loginForm; 
  const MessageError({Key? key, required this.jobOffer, required this.loginForm}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Card(
          color: themeMessageBackground,
          child: RichText(
            text: TextSpan(
              children: [ 
                TextSpan(
                  text: "Resultado Consulta de Subscriptos",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: themeMessageTitle, fontWeight: FontWeight.bold),
                ),               
                TextSpan(
                  text: "Nadie se ha subscripto a este aviso " + jobOffer.id.toString(),
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: themeMessageValue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Color.fromARGB(255, 228, 137, 2),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/list.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Published(
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
            /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Publish(
                  loginForm: loginForm,
                ),
              ),
            );*/
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
                builder: (context) => HomePublisher(loginForm: loginForm,),
              ),
            );
          },
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }


}