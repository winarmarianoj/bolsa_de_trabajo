import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/homeApplicant.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/applicant/applied/components/bodyApplied.dart';
import 'package:bolsa_de_trabajo/screens/ui/home/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class Applied extends StatelessWidget{ 
  final LoginFormProvider loginForm; 
  const Applied({Key? key, required this.loginForm}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: HomeDrawer(),
      body: BodyApplied(loginForm: loginForm,),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: themeColorAppBarApplicant,
      elevation: 0,
      /*leading: IconButton(
        icon: SvgPicture.asset("assets/icons/logo-utn.ba.svg"),
        onPressed: () {},
      ),*/
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
                builder: (context) => HomeApplicant(
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