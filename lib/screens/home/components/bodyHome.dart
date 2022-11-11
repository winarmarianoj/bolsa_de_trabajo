import 'package:bolsa_de_trabajo/screens/home/components/itemCardJobOffer.dart';
import 'package:bolsa_de_trabajo/screens/home/details/detailsScreenJobOffer.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/services/jobOfferService.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';

class BodyHome extends StatefulWidget{  
  const BodyHome({Key? key}) : super(key: key);  
  @override  
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<BodyHome>{  
  JobOfferService jobOfferService = new JobOfferService();
  Future<List<JobOffer>>? futureJobOffer;

  @override
  void initState(){
    super.initState();
    futureJobOffer = jobOfferService.getJobOfferAll();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/cielo.jpg",
          width: 500,
          height: 700,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: FutureBuilder(
                  future: futureJobOffer,
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      List<JobOffer>? jobofferlist = [];
                      var list = snapshot.data;
                      jobofferlist = snapshot.data as List<JobOffer>?;
                      return GridView.builder(
                          itemCount: amountListJobOffer(snapshot.data),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: kDefaultPaddin/3,
                            crossAxisSpacing: kDefaultPaddin/3,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) => ItemCardJobOffer(
                            jobOffer: jobofferlist![index],
                            press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreenJobOffer(
                                  jobOffer: jobofferlist![index],
                                ),
                              ),
                            ),
                          ),
                        );
                    }else if(snapshot.hasError){
                      print(snapshot.error);
                      return Text("Error al traer joboffers");
                    }

                    return Center(child: CircularProgressIndicator(),);
                  },
                ),
              ),
            ),
            Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/logCuvl.png",
                          width: 90,
                          height: 30,
                          fit: BoxFit.cover,
                      ),
                      Column(
                        children:  <Widget> [
                          const SizedBox(height: kDefaultPaddin/2),
                          RichText(
                            text: TextSpan(
                              children: [ 
                                TextSpan(
                                  text: "Address: ",
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                ),               
                                TextSpan(
                                  text: "Carlos Villate 4480, Munro, Buenos Aires",
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: kDefaultPaddin/2),
                          RichText(
                                text: TextSpan(
                                  children: [ 
                                    TextSpan(
                                      text: "Email: ",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),               
                                    TextSpan(
                                      text: "bolsa.de.trabajo.utn.test@gmail.com",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                          const SizedBox(height: kDefaultPaddin/2),
                          RichText(
                                text: TextSpan(
                                  children: [ 
                                    TextSpan(
                                      text: "Phones: ",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),               
                                    TextSpan(
                                      text: "5197-1515 / 5197-1154",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                          const SizedBox(height: kDefaultPaddin/2),
                          RichText(
                                text: TextSpan(
                                  children: [ 
                                    TextSpan(
                                      text: "",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),               
                                    TextSpan(
                                      text: "https://www.vicentelopez.gov.ar/centrouniversitariovl",
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: textDetailJobOfferApplied, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                          const SizedBox(height: kDefaultPaddin/2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
               
      ],
    );
  } 

  List<Widget> listSnapshot(info){
    List<Widget> list = [];
    for (var data in info) {
      ItemCardJobOffer(
        jobOffer: data,
        press: () => Navigator.push(
          context, 
          MaterialPageRoute(
            builder: ((context) => DetailsScreenJobOffer(
              jobOffer: data))
          )
        ),
      );
      
      list.add(Text(data.title));
      list.add(Text(data.description));
    }
    return list;
  }

  int amountListJobOffer(info){
    int count = 0;
    for (var data in info){
      count++;
    }
    return count;
  }
}