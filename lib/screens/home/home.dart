import 'package:bolsa_de_trabajo/screens/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/screens/home/components/bodyHome.dart';


class Home extends StatelessWidget{    
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyHome(),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/logins.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(
                  context,
                ),
              ),
            );
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/add-user.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Signup(
                  context,
                ),
              ),
            );*/
          },
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

}