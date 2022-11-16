import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/screens/home/details/components/detailsBodyJobOffer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class DetailsScreenJobOffer extends StatelessWidget {
  final JobOffer jobOffer;
  const DetailsScreenJobOffer({Key? key, required this.jobOffer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailsBodyJobOffer(jobOffer: jobOffer,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: themeAppBarHome,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: themeButtonBackHome,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}