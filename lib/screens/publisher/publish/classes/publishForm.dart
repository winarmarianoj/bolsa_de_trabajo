import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/providers/publishFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/publisher/publish/decorations/decorationPublishForm.dart';
import 'package:bolsa_de_trabajo/services/jobOfferService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PublishForm extends StatelessWidget {
  final LoginFormProvider loginForm;
  const PublishForm({Key? key, required this.loginForm}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    final publishForm = Provider.of<PublishFormProvider>(context);
    JobOfferService jobOfferService = new JobOfferService();
    return Container(
      child: Form(
        key: publishForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(           
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese título del aviso',
                  labelText: 'Título',
                  prefixIcon: Icons.title),
              onChanged: (value) => publishForm.title = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese la descripcion del aviso',
                  labelText: 'Descripción',
                  prefixIcon: Icons.description),
              onChanged: (value) => publishForm.description = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese el area del aviso',
                  labelText: 'Area',
                  prefixIcon: Icons.area_chart),
              onChanged: (value) => publishForm.area = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese el cuerpo del aviso',
                  labelText: 'Cuerpo',
                  prefixIcon: Icons.book),
              onChanged: (value) => publishForm.body = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese la experiencia del aviso',
                  labelText: 'Experiencia',
                  prefixIcon: Icons.work_history),
              onChanged: (value) => publishForm.experience = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese la modalidad del aviso',
                  labelText: 'Modalidad',
                  prefixIcon: Icons.mode),
              onChanged: (value) => publishForm.modality = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'ingrese la posicion del aviso',
                  labelText: 'Posición',
                  prefixIcon: Icons.place),
              onChanged: (value) => publishForm.position = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            //const SizedBox(height: 5),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: DecorationPublishForm.inputDecoration(
                  hintText: 'FULLSTACK-BACKEND-FRONTEND-QA-UI-UX',
                  labelText: 'Categoria',
                  prefixIcon: Icons.place),
              onChanged: (value) => publishForm.category = value,
              validator: (value) {
                String pattern = r'^[a-zA-ZñÑ]$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no es un texto valido';
              },
            ),
            const SizedBox(height: 5),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.green,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 80,
                   vertical: 5),
                  child: Text(
                    loginForm.isLoading ? 'Procesando....': 'Enviar' ,                     
                    style: const TextStyle(color: Colors.white),
                  )), 
              onPressed: publishForm.isLoading && publishForm.title.length!=0 && publishForm.description.length!=0
                  ? null
                  : () {
                      FocusScope.of(context).unfocus();
                      if (!publishForm.isValidForm()) return;
                      //loginForm.isLoading = true;
                      Future.delayed(Duration(seconds: 5));
                      // TODO: envia a crear el aviso al back
                      jobOfferService.createJobOffer(loginForm, context, publishForm);                      
                    }
            ),
          ],
        ),
      ),
    );
  }
}