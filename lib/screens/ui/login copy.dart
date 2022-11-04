import 'package:bolsa_de_trabajo/screens/home/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  Login(BuildContext context);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login>{
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(        
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 40.0,
              spreadRadius: 25.0,
              offset: Offset(
                15.0,15.0
              )
          )],
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 70),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(          
          child: Column(            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Image.asset("assets/images/login.png", height: 20,),),
              //SizedBox(height: 20,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "username@correo.com"
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "******"
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: MaterialButton(
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => Home())));
                  },
                ),
              ),
              SizedBox(height: 30,),
              Text("Nueva Cuenta Usuario? crea una cuenta"),
            ],
          ),
        ),        
      ),
    );
  }

}