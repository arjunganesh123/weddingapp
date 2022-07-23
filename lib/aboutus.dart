import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  static const String id="Aboutus";
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
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
                          padding: EdgeInsets.only(left: 20,right: 90),
                          child: Text('ABOUT US',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20),),
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
                    Text('Vendor app is a wedding service book app....',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line3,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Text(line3,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text('CONTACT US',style: TextStyle(color: Colors.black,fontSize: 22),)),
                    Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.065,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Image.asset('images/whatsapp.png'),
                            SizedBox(width: 20,),
                            Text('/whatsapp.me',style: TextStyle(fontSize: 17,color: Color.fromRGBO(53, 43, 44, 1),),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Image.asset('images/instagram.png'),
                          SizedBox(width: 20,),
                          Text('/instagram.me',style: TextStyle(fontSize: 17,color: Color.fromRGBO(53, 43, 44, 1),),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.065,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Image.asset('images/facebook.png'),
                            SizedBox(width: 20,),
                            Text('/facebook.me',style: TextStyle(fontSize: 17,color: Color.fromRGBO(53, 43, 44, 1),),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Image.asset('images/telegram.png'),
                          SizedBox(width: 20,),
                          Text('/telegram.me',style: TextStyle(fontSize: 17,color: Color.fromRGBO(53, 43, 44, 1),),),
                        ],
                      ),
                    ),
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
