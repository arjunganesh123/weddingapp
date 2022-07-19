import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/PaymentScreen.dart';

class Payment1 extends StatefulWidget {
  static const String id='Payment1';
  const Payment1({Key? key}) : super(key: key);

  @override
  State<Payment1> createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.transparent,
        child: const Icon(
          Icons.keyboard_backspace_sharp,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'images/Loginback.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              elevation: 50,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top:20,bottom: 20),
                        child: Center(child: Text('REGISTRATION \nFEE PAYMENT',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),))),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: (){

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.6,
                        height: MediaQuery.of(context).size.height*0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFFCDF1CD),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/ruppee.png'),
                            Text(' 100 /-',style: const TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, PaymentScreen.id);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.6,
                          height: MediaQuery.of(context).size.height*0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xFF20072E),
                          ),
                          child: Center(child: Text('PAY NOW',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: 20,
            child: Text(
              'REGISTRATION',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,letterSpacing: 1,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
