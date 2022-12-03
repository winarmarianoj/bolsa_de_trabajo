import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/login.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatelessWidget {
  final LoginFormProvider loginForm;
  final transitionDuration = Duration(milliseconds: 250);
  HomeDrawer({Key? key, required this.loginForm}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    //final loginForm = Provider.of<LoginFormProvider>(context);
    return Drawer(
      backgroundColor: themeDrawerBackground,
      width: 270,
      child: Column(                
          children: [            
            DrawerHeader(          
              duration: transitionDuration,
              decoration: colorsBolsaDeTrabajo(),
              //padding: const EdgeInsets.fromLTRB(65.0, 35.0, 65.0, 8.0),
              padding: const EdgeInsets.fromLTRB(5.0, 1.0, 1.0, 8.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logCuvl.png",
                      width: 230,
                      height: 70,
                      fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 15),
                  //Flexible(child: Text('Bienvenido ' + loginForm.email)),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: "Bienvenido "),   
                        TextSpan(
                          text: loginForm.email,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: themeDrawerText, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),    
                  const SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      children: [
                        //const TextSpan(text: "App : "),   
                        TextSpan(
                          text: "Bolsa de Trabajo CUVL & UTN",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: themeDrawerText, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),    
                  const SizedBox(height: 15),                    
                ],
              ),
            ),             
            RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: "Contacto:  "),   
                        TextSpan(
                          text: "  5197-1515  /  5197-1154",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: themeDrawerText, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),    
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: "Email: \n"),   
                        TextSpan(
                          text: "bolsa.de.trabajo.UTN.test@gmail.com",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: themeDrawerText, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),    
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: "Web Site: \n"),     
                        TextSpan(
                          text: "https://www.vicentelopez.gov.ar/centrouniversitariovl",
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: themeDrawerText, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),    
                  const SizedBox(height: 1),  

            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.login),
              title: Text('Login',style: const TextStyle(color: themeDrawerTextLinks, fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              }
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.app_registration_rounded),
              title: Text('Register',style: const TextStyle(color: themeDrawerTextLinks, fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              }
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.logout_outlined),
              title: Text('Logout',style: const TextStyle(color: themeDrawerTextLinks, fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              }
            ),
          ],
      )
    );
  }

  BoxDecoration _coloredBackground() => BoxDecoration(
          gradient: LinearGradient(colors: [
        //themeDrawerGradiantOne, 
        //themeDrawerGradiantTwo, 
        Colors.lightBlue.shade400,
        Colors.lightBlue.shade100,
      ])
  );
  BoxDecoration colorsBolsaDeTrabajo() => BoxDecoration(
          gradient: LinearGradient(colors: [
        themeDrawerGradiantThree, 
        themeDrawerGradiantFour, 
      ])
  );
}