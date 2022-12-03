import 'dart:ui';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/forms/applicantFormRegister.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/forms/publisherFormRegister.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/forms/registerScreen.dart';
import 'package:bolsa_de_trabajo/utils/bounceButton.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,
                   vertical: 70),   
        child: Table(
          children: [            
            TableRow(
              children: [
                _SigleCard(
                    color: Colors.yellowAccent, icon: Icons.app_registration_outlined, text: 'APPLICANT'),
                _SigleCard(
                    color: Colors.yellowAccent, icon: Icons.app_registration,text: 'PUBLISHER'),
              ],
            ),
            TableRow(
              children: [
                _SigleCard(
                    color: Colors.yellowAccent, icon: Icons.shop, text: 'UTN'),
                _SigleCard(
                    color: Colors.yellowAccent, icon: Icons.cloud, text: 'ADMIN'),
              ],
            ),
          ],
        ),
      );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.color, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.green,          
          child: 
          BounceButton(
            buttonSize: ButtonSize.small,
              type: ButtonType.primary,
              label: 'Registrarme...',
              iconLeft: this.icon,
              onPressed: () {
                if(text=='APPLICANT'){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => ApplicantFormRegister()))); 
                }else if(text=='PUBLISHER'){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => PublisherFormRegister()))); 
                }else if(text=='UTN'){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterScreen()))); 
                }
              },
          ),
          radius: 24,
        ),
        SizedBox(height: 10),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    ));
  }

  goToRegister(String text, BuildContext context) {
    if(text=='APPLICANT'){
     // Navigator.push(context, MaterialPageRoute(builder: ((context) => ApplicantFormRegister()))); 
    }else if(text=='PUBLISHER'){
      //Navigator.push(context, MaterialPageRoute(builder: ((context) => PublisherFormRegister()))); 
    }else if(text=='UTN'){
      //Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterScreen()))); 
    }else if(text=='ADMIN'){
      //Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterScreen()))); 
    }            
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromARGB(175, 15, 19, 59),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}


/* MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)),
      disabledColor: themeLoginDisableButton,
      elevation: 0,
      color: themeRegisterSendButton,            
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80,
            vertical: 15),
          child: Text(
            'Ingresando',
            style: const TextStyle(color: themeLoginStateProccess),
          )), 
      onPressed: text == null
          ? null
          : () {
              FocusScope.of(context).unfocus();
              if(text=='APPLICANT'){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => ApplicantFormRegister()))); 
              }else if(text=='PUBLISHER'){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => PublisherFormRegister()))); 
              }else if(text=='UTN'){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterScreen()))); 
              }else if(text=='ADMIN'){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterScreen()))); 
              }
            }                
  ),
    IconButton(
    onPressed: goToRegister(text, context), 
    icon: Icon(
      this.icon,
      size: 35,
      color: Colors.white,
    ),
  ), */
          
          