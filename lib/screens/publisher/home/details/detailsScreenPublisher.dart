import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/screens/publisher/home/details/components/detailsBodyPublisher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class DetailsScreenPublisher extends StatelessWidget {
  final JobOffer jobOffer;
  const DetailsScreenPublisher({Key? key, required this.jobOffer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailsBodyJobOfferPublisher(jobOffer: jobOffer,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: themeColorAppBarPublisher,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: themeButtonBackPublisher,
        ),
        onPressed: () => Navigator.pop(context),
      ),     
    );
  }
}