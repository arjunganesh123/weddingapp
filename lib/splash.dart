import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/HomePage.dart';
import 'package:wedding_app/Login_register.dart';

class Splash extends StatefulWidget {
  static const String id = 'Splash';

  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navigatetoLoginRegister();
    super.initState();
  }

  _navigatetoLoginRegister() async {
    await Future.delayed(const Duration(milliseconds: 5000), (){
      if(FirebaseAuth.instance.currentUser!= null){
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage()));
      }
      else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginRegister()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "images/splash.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
