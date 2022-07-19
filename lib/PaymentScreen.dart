import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/Verification.dart';

class PaymentScreen extends StatefulWidget {
  static const String id='PaymentScreen';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              child: Image.asset('images/Common.png',fit: BoxFit.fitHeight,),
            ),
          ),
          Positioned(
            top: 90,
            left: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color.fromRGBO(221, 194, 235, 0.42),
              elevation: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.92,
                height: MediaQuery.of(context).size.height*0.72,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.21,
              left: 80,
              child:Column(
                children: [
                  Text('   PAYMENT \nSUCCESSFUL',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Padding(
                      padding: EdgeInsets.only(top: 30,bottom: 30),
                      child: Image.asset('images/paymenttick.png',color: Colors.black,)),
                ],
              )
          ),
          Positioned(
            bottom: 200,
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
                Navigator.pushNamed(context, Verification.id);
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
