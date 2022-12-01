import 'package:bolsa_de_trabajo/providers/loginFormProvider.dart';
import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:bolsa_de_trabajo/constant/constant.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginFormProvider())
      ],
      child: MaterialApp(
        title: 'Bolsa de Trabajo UTN',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: themeColorHomePage,
        ),
        home: Home(),
      ),
    );
  }
}
