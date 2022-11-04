import 'package:bolsa_de_trabajo/screens/home/components/itemCardJobOffer.dart';
import 'package:bolsa_de_trabajo/screens/home/details/detailsScreenJobOffer.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/models/JobOffer.dart';
import 'package:bolsa_de_trabajo/services/JobOfferService.dart';
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
                      /*return GridView.count(
                        crossAxisCount: 2,
                        children: listSnapshot(snapshot.data),                         
                      );*/
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
          ],
        ),
      ],
    );
    
    
    /*Scaffold(
      backgroundColor: Colors.deepOrange,
      body: FutureBuilder(
        future: futureJobOffer,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return GridView.count(
              crossAxisCount: 2,
              children: listSnapshot(snapshot.data),
            );
          }else if(snapshot.hasError){
            print(snapshot.error);
            return Text("Error al traer joboffers");
          }

          return Center(child: CircularProgressIndicator(),);
        },
      ),
    );*/


  }

  /*List<Widget> listSnapshot(List<JobOffer> info){
    List<Widget> list = [];
    for (var joboffer in info) {
      list.add(Card(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(joboffer.title),
            ),          
        ],
      ),));     
    }
    return list;
  }*/

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


  /*List<Widget> listado(List<JobOffer> info){
    List<Widget> list = [];
    for (var data in info) {
      ItemCardJobOffer(joboffer: data);
      
      list.add(Text(data.title));
      list.add(Text(data.description));
    }
    return list;

  }*/
}