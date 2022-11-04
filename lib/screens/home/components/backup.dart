/*
Scaffold(
      body:
        /*Image.asset(
          "assets/images/cielo.jpg",
          width: 600,
          height: 800,
          fit: BoxFit.cover,
        ),*/
            FutureBuilder(
              
              builder: (context, snapshot){
                if (snapshot.hasData) {                      
                  return GridView.builder(
                    itemCount: joboffers.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    
                    itemBuilder: (context, index) => ItemCardJobOffer(
                        FutureBuilder(
                          future: futureJobOffer, 
                          builder: (context, snapshot) {
                          if(snapshot.hasData){
                            children: listado(snapshot.data),
                          }
                        },)
                  joboffer: joboffers[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsBodyJobOffer(
                        jobOffer: joboffers[index],
                      ),
                    ),
                  ),
                ),
                  );
                } else {
                  print("No hay información");
                  return Text("Sin data");
                }
                return Center(child: CircularProgressIndicator(),);
              },
            ),
        
    );
*/

    /**
     * return Stack(
       children: [
          Image.asset(
            "assets/images/cielo.jpg",
            width: 600,
            height: 800,
            fit: BoxFit.cover,
          ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: joboffers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCardJobOffer(
                  FutureBuilder(future: futureJobOffer, builder: (context, snapshot) 
                    {
                      if(snapshot.hasData){
                        children: listado(snapshot.data);
                      } else if(snapshot.hasError){
                        print(snapshot.error);
                        return Text("Error al traer joboffers");
                      }
                      return Center(child: CircularProgressIndicator(),)
                    }
                  );
                  joboffer: joboffers[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsBodyJobOffer(
                        jobOffer: joboffers[index],
                      ),
                  )),                  
                ),
              ),
            ),
          ),
        ],
      )],       
    );
    */


/*
Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: joboffers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),

                itemBuilder: (context, index) => ItemCardJobOffer(
                  FutureBuilder(future: futureJobOffer, builder: (context, snapshot) {
                    if(snapshot.hasData){

                    }
                  },)
                  joboffer: joboffers[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsBodyJobOffer(
                        jobOffer: joboffers[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )],
*/
  
  /*Widget build(BuildContext context) {    
    List<JobOffer> jobOffers = [];    
    return  Scaffold(
      appBar: AppBar(title: Text("Bolsa de Trabajo UTN"),),
      body: FutureBuilder<dynamic>(
        future: jobOfferService.getJobOfferAll(),
        builder: (context, snapshot){
          if (snapshot.hasData) {
            print(snapshot);
            return ListView(
              children: listado(snapshot.data)
            ) ;
          } else {
            print("No hay información");
            return Text("Sin data");
          }
        },
        initialData: Center(child: CircularProgressIndicator()),

      )
    );
  }

  List<Widget> listado( List<JobOffer> info ){

    List<Widget> lista = [];
    info.forEach((jobOffers) {
      lista.add(Text(jobOffers[]));
      lista.add(Text(jobOffers["id"]));
    });
    return lista;

  }*/