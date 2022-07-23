import 'package:flutter/material.dart';
import 'package:wedding_app/Help.dart';
import 'package:wedding_app/HomePage.dart';
import 'package:wedding_app/LoginPage.dart';
import 'package:wedding_app/Login_register.dart';
import 'package:wedding_app/PaymentScreen.dart';
import 'package:wedding_app/Vendorreg.dart';
import 'package:wedding_app/Verification.dart';
import 'package:wedding_app/aboutus.dart';
import 'package:wedding_app/customerpolicy.dart';
import 'package:wedding_app/feedback.dart';
import 'package:wedding_app/marketingpolicy.dart';
import 'package:wedding_app/privacypolicy.dart';
import 'package:wedding_app/splash.dart';
import 'package:wedding_app/termsandcondition.dart';
import 'package:wedding_app/vendorprof.dart';

import 'Payment1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: const Splash(),
      routes: {
         LoginRegister.id:(context)=>const LoginRegister(),
         LoginPage.id:(context)=>const LoginPage(),
        Verification.id:(context)=>const Verification(),
        PaymentScreen.id:(context)=>const PaymentScreen(),
        Payment1.id:(context)=>const Payment1(),
        Vendorreg.id:(context)=>const Vendorreg(),
        VendorProf.id:(context)=>const VendorProf(),
        HomePage.id:(context)=>const HomePage(),
        Help.id:(context)=>const Help(),
        Feedbackk.id:(context)=>const Feedbackk(),
        Aboutus.id:(context)=>const Aboutus(),
        MarketPolicy.id:(context)=>const MarketPolicy(),
        CustomerPolicy.id:(context)=>const CustomerPolicy(),
        Privacypolicy.id:(context)=>const Privacypolicy(),
        Termsandcondition.id:(context)=>const Termsandcondition(),
      },
    );
  }
}
