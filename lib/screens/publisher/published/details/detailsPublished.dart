import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/publisher/homePublisher.dart';
import 'package:bolsa_de_trabajo/screens/publisher/published/details/components/detailsBodyPublished.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class DetailsPublished extends StatelessWidget {
  final JobOffer jobOffer;
  final LoginFormProvider loginForm;
  const DetailsPublished({Key? key, required this.jobOffer, required this.loginForm}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailsBodyPublished(jobOffer: jobOffer, loginForm: loginForm),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: themeColorAppBarPublished,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg',
          color: themeButtonBackPublisher,
        ),
        onPressed: () => Navigator.pop(context),
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