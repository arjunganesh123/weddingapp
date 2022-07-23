import 'package:flutter/material.dart';

class MarketPolicy extends StatefulWidget {
  static const String id="Market";
  const MarketPolicy({Key? key}) : super(key: key);

  @override
  State<MarketPolicy> createState() => _MarketPolicyState();
}

class _MarketPolicyState extends State<MarketPolicy> {
  String line1='...................................................................................';
  String line2='.......................................................';
  String line3='..................................';
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
            top: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color.fromRGBO(221, 194, 235, 0.42),
              elevation: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.09,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset('images/Menu.png')),
                        Padding(
                          padding: EdgeInsets.only(left: 10,),
                          child: Text('MARKETING FEE POLICY',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 18),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.15,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.83,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: 30,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MARKETING FEE POLICY:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line3,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    Text(line3,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
