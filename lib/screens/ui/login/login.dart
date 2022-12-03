import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/applicant/homeApplicant.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:bolsa_de_trabajo/screens/publisher/homePublisher.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/decorations/input_decorations.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/widgets/auth_background.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/widgets/card_container.dart';
import 'package:bolsa_de_trabajo/services/authenticationService.dart';
import 'package:bolsa_de_trabajo/utils/bounceButton.dart';
import 'package:bolsa_de_trabajo/utils/customPopup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250),
              CardContainers(                
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    /*Row(
                      children: [
                        const SizedBox(width: 70),
                        Icon(
                          Icons.person_add,
                          color: themePersonAdd,
                          size: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Login',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),*/
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 30),                    
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProvider(),
                      child: _LoginForm(),
                    )
                  ],
                ),
              ),
              /*const SizedBox(height: 50),
              const Text(
                'Crear una nueva cuenta',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),*/
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'tucasilladeemail@gmail.com',
                  labelText: 'Correo electrónico',
                  prefixIcon: Icons.alternate_email_rounded),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);

                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un correo valido';
              },
            ),
            SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '*****',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.remove_red_eye_outlined),
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                return (value != null && value.length >= 6)
                    ? null
                    : 'La contraseña debe de ser de 6 caracteres';
              },
            ),
            const SizedBox(height: 30),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: themeLoginDisableButton,
              elevation: 0,
              color: themeLoginSendButton,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 80,
                   vertical: 15),
                  child: Text(
                    loginForm.isLoading ? 'Ingresando': 'Aceptar' ,                     
                    style: const TextStyle(color: themeLoginStateProccess),
                  )), 
              onPressed: loginForm.isLoading && loginForm.email.length!=0 && loginForm.password.length!=0
                  ? null
                  : () {
                    FocusScope.of(context).unfocus();
                    if (!loginForm.isValidForm()) return;                      
                    Future.delayed(Duration(seconds: 5));
                    AuthenticationService service = new AuthenticationService();
                    service.getLoginUser(loginForm, context);
                  }
            ),
          ],
        ),
      ),
    );
  }
}
