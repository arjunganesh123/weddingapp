import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/HomePage.dart';

class Verification extends StatefulWidget {
  static const String id='Verification';
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
              child: Image.asset('images/Verification.png',fit: BoxFit.fitHeight,),
            ),
          ),
          Positioned(
            top: 90,
            left: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color.fromRGBO(221, 194, 235, 0.22),
              elevation: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.92,
                height: MediaQuery.of(context).size.height*0.75,
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              onPressed: (){
                Navigator.pushNamed(context, HomePage.id);
              },
              child: Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF20072E),
                ),
                child: Center(child: Text('OKAY',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
