import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      
      width: double.infinity,
      height: double.infinity,
      /*child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          this.child,
        ],
      ),*/
      child: Column(
        children: [
          /*Image.asset("assets/images/fondo.png",
          width: 400,
          height: 370,
          fit: BoxFit.fill,
          ),*/
          Stack(
            children: [
              _PurpleBox(),
              _HeaderIcon(),
              this.child,
            ],
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Center(
                  child: Image.asset("assets/images/logCuvl.png", 
                  width: 240,
                  height: 70,
                  fit: BoxFit.cover,)
                ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Center(
                  child: Image.asset("assets/images/logo-utn.ba.png",
                   width: 240,
                    height: 70,
                    fit: BoxFit.cover,)
                ),
          ),
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(
          Icons.person_add,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          Positioned(child: _Bubble(), top: 95, left: 25),
          Positioned(child: _Bubble(), top: 90, left: 30),
          Positioned(child: _Bubble(), top: -40, left: -30),
          Positioned(child: _Bubble(), top: -50, right: -20),
          Positioned(child: _Bubble(), bottom: -50, left: 10),
          Positioned(child: _Bubble(), bottom: 120, right: 20),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 79, 156, 63),
            Color.fromRGBO(90, 70, 178, 1)
          ],
        ),
      );
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
     
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}