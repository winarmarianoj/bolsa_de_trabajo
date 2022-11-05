import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/details/components/detailsBodyJobOfferApplicant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreenJobOfferApplicant extends StatelessWidget {
  final JobOffer jobOffer;
  final LoginFormProvider loginForm;
  const DetailsScreenJobOfferApplicant({Key? key, required this.jobOffer, required this.loginForm}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailsBodyJobOfferApplicant(jobOffer: jobOffer, loginForm: loginForm),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      /*actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],*/
    );
  }
}