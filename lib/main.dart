import 'package:flutter/material.dart';
import 'package:wedding_app/LoginPage.dart';
import 'package:wedding_app/Login_register.dart';
import 'package:wedding_app/PaymentScreen.dart';
import 'package:wedding_app/Vendorreg.dart';
import 'package:wedding_app/Verification.dart';
import 'package:wedding_app/splash.dart';

import 'Payment1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: const Vendorreg(),
      routes: {
         LoginRegister.id:(context)=>const LoginRegister(),
         LoginPage.id:(context)=>const LoginPage(),
        Verification.id:(context)=>const Verification(),
        PaymentScreen.id:(context)=>const PaymentScreen(),
        Payment1.id:(context)=>const Payment1(),
        Vendorreg.id:(context)=>const Vendorreg(),
      },
    );
  }
}
