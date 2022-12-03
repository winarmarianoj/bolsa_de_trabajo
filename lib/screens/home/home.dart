import 'dart:convert';

import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/ui/home/myDrawer.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/login.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/screens/home/components/bodyHome.dart';


class Home extends StatelessWidget{      
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(context), //buildAppBar(context),
      drawer: HomeDrawer(loginForm: new LoginFormProvider(),),
      body: BodyHome(),
    );
  }
  AppBar EmptyAppBar(BuildContext context){
    return AppBar(
      backgroundColor: themeAppBarHome,
      elevation: 10,
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: themeAppBarHome,
      elevation: 10,
      /*leading: SvgPicture.asset(
        "assets/icons/logoUtnNegro.svg",
        fit: BoxFit.fill,
      ),*/
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/logins.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            );
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/add-user.svg",
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Signup(),
              ),
            );
          },
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

}