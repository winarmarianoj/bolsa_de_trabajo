import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/applied.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/applicant/home/components/bodyHomeApplicant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class HomeApplicant extends StatelessWidget{ 
  final LoginFormProvider loginForm; 
  const HomeApplicant({Key? key, required this.loginForm}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyHomeApplicant(loginForm: loginForm,),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/logCuvl.svg"),
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
                builder: (context) => Applied(
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
                builder: (context) => ProfileApplicant(
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