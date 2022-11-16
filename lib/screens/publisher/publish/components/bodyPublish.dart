import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/providers/publishFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/publish/classes/publishForm.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:provider/provider.dart';

class BodyPublish extends StatelessWidget{  
  final LoginFormProvider loginForm;
  const BodyPublish({Key? key, required this.loginForm}) : super(key: key);  

  @override
  Widget build(BuildContext context) {    
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(      
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/cielo.jpg",
                  width: 500,
                  height: 1200,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.01),
                  padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    left: kDefaultPaddin/2,
                    right: kDefaultPaddin/2,
                  ),
                  height: 1150,
                   decoration: const BoxDecoration(
                    color: themeBodyPublishBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),                  
                  child: Column(
                    children:<Widget>[
                      const SizedBox(height: 10),
                      ChangeNotifierProvider(
                        create: (_) => PublishFormProvider(),
                        child: PublishForm(loginForm: loginForm,),
                      ),
                    ],
                  ),

                ),
              ],
            ),
          )
        ],
      ),
    );
    
  }

  

}