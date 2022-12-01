import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/providers/registerFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/decorations/input_decorations.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/login.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/widgets/auth_background.dart';
import 'package:bolsa_de_trabajo/screens/ui/login/widgets/card_container.dart';
import 'package:bolsa_de_trabajo/screens/ui/signup/decorations/registerDecorations.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:provider/provider.dart';

class ApplicantFormRegister extends StatelessWidget {
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
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Register',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 30),
                    ChangeNotifierProvider(
                      create: (_) => RegisterFormProvider(),
                      child: RegisterForm(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),              
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {    
     final registerForm = Provider.of<RegisterFormProvider>(context);
     final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: registerForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'ingrese su nombre',
                  labelText: 'Name',
                  prefixIcon: Icons.title),
              onChanged: (value) => registerForm.name = value,
              validator: (value) {
                String pattern = r'^[a-zA-Z ]{2,50}$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '') && (value != null && value.length <= 50)
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            const SizedBox(height: 5),
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'ingrese su apellido',
                  labelText: 'Apellido',
                  prefixIcon: Icons.title),
              onChanged: (value) => registerForm.surname = value,
              validator: (value) {
                String pattern = r'^[a-zA-Z ]{2,50}$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '') && (value != null && value.length <= 50)
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            const SizedBox(height: 5),
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'ingrese su dni o cuit sin guiones ni puntos',
                  labelText: 'DNI o CUIT',
                  prefixIcon: Icons.title),
              onChanged: (value) => registerForm.identification = value,
              validator: (value) {
                String pattern = r'^[0-9]{7,20}$';
                RegExp regExp = new RegExp(pattern);
                return (value != null && value.length <= 20)
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),            
            const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'tuemail@gmail.com',
                  labelText: 'Correo electrónico',
                  prefixIcon: Icons.alternate_email_rounded),
              onChanged: (value) => registerForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);

                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un correo valido';
              },
            ),
            const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '*****',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.remove_red_eye_outlined),
              onChanged: (value) => registerForm.password = value,
              validator: (value) {
                return (value != null && value.length >= 6)
                    ? null
                    : 'La contraseña debe de ser de 6 caracteres';
              },
            ),
            const SizedBox(height: 5),
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'ingrese su telefono',
                  labelText: 'Telefono',
                  prefixIcon: Icons.phone),
              onChanged: (value) => registerForm.phoneNumber = value,
              validator: (value) {
                String pattern = r'^[0-9]$';
                RegExp regExp = new RegExp(pattern);
                return (value != null && value.length <= 18)
                    ? null
                    : 'El valor ingresado no es un numero valido';
              },
            ),
            const SizedBox(height: 5),
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'ingrese su genero',
                  labelText: 'Genero',
                  prefixIcon: Icons.male),
              onChanged: (value) => registerForm.genre = value,
              validator: (value) {
                String pattern = r'^[a-zA-Z ]{2,10}$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '') && (value != null && value.length <= 10)
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            const SizedBox(height: 5),
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'ACTIVE, REGULAR, RECEIVED',
                  labelText: 'Tipo de Estudiante',
                  prefixIcon: Icons.type_specimen),
              onChanged: (value) => registerForm.typeStudent = value,
              validator: (value) {
                String pattern = r'^[a-zA-Z ]{2,10}$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '') && (value != null && value.length <= 10)
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            /*TextFormField(
              controller: _textEditingController,
              onTap: () async {
                // Below line stops keyboard from appearing
                FocusScope.of(context).requestFocus(new FocusNode());
                // Show Date Picker Here
                await _selectDate(context);
                _textEditingController.text = DateFormat('yyyy/MM/dd').format(date);
                //setState(() {})
              }
            ),
            */
            const SizedBox(height: 5),
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: RegisterDecorations.registerDecoration(
                  hintText: 'fecha nacimiento formato yyyy-MM-dd',
                  labelText: 'Fecha de Nacimiento',
                  prefixIcon: Icons.date_range),
              onChanged: (value) => registerForm.birthDate = value,
              validator: (value) {
                String pattern = r'^[a-zA-Z ]{2,10}$';
                RegExp regExp = new RegExp(pattern);
                return (value != null && value.length <= 10)
                    ? null
                    : 'El valor ingresado no es un texto valido';
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
                    registerForm.isLoading ? 'Ingresando': 'Registrarme' ,                     
                    style: const TextStyle(color: themeLoginStateProccess),
                  )), 
              onPressed: registerForm.isLoading && registerForm.email.length!=0 && registerForm.password.length!=0
                  ? null
                  : () {
                      FocusScope.of(context).unfocus();
                      if (!registerForm.isValidForm()) return;
                      registerForm.isLoading = true;
                      Future.delayed(Duration(seconds: 5));
                      loginForm.email = registerForm.email;
                      loginForm.password = registerForm.password;
                                           
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Login())));
                    }                    
            ),
          ],
        ),
      ),      
    );    
  }
}