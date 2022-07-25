import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Help.dart';
import 'customdrawer.dart';

class PastBookings extends StatefulWidget {
  static const String id="PastBook";
  const PastBookings({Key? key}) : super(key: key);

  @override
  State<PastBookings> createState() => _PastBookingsState();
}

class _PastBookingsState extends State<PastBookings> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: scaffoldKey,
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
                height: MediaQuery.of(context).size.height*0.12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: IconButton(
                            icon: Image.asset('images/Menu.png'),
                            onPressed: () {
                              scaffoldKey.currentState?.openDrawer();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10,right: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('PAST BOOKINGS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20,fontWeight: FontWeight.w600),),
                              Text('365 days left',style: TextStyle(fontSize: 10,color: Color.fromRGBO(51, 0, 81, 1),),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, Help.id);
                              },
                              child:Text('HELP',style: TextStyle(color: Colors.blue,fontSize: 20),)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 3,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color.fromRGBO(221, 194, 235, 0.42),
              elevation: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.965,
                height: MediaQuery.of(context).size.height*0.83,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15,bottom: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Color.fromRGBO(221, 194, 235, 0.42),
                        elevation: 50,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: MediaQuery.of(context).size.height*0.22,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Customer Name",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 17,fontWeight: FontWeight.w600),),
                                Row(
                                  children: [
                                    Text('Services required on ',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                                    Text('19/07/22',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w700),),
                                  ],
                                ),
                                Text('Address - ..........................',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w700,fontSize: 12),),
                                Text('...........',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w700),),
                                Text('Services Required',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 17,fontWeight: FontWeight.w700),),
                                Row(
                                  children: [
                                    CircleAvatar(radius: 2,backgroundColor: Color.fromRGBO(51, 0, 81, 1),),
                                    SizedBox(width: 3,),
                                    Text('wedding vediography',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 10,),
                                    CircleAvatar(radius: 2,backgroundColor: Color.fromRGBO(51, 0, 81, 1),),
                                    SizedBox(width: 3,),
                                    Text('wedding photography',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(radius: 2,backgroundColor: Color.fromRGBO(51, 0, 81, 1),),
                                    SizedBox(width: 3,),
                                    Text('Pre wedding shoot',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                                    ],
                                ),
                                SizedBox(width: 5,),
                                Text("Contact No- 9999 9999999999",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Color.fromRGBO(221, 194, 235, 0.42),
                      elevation: 50,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*0.21,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Customer Name",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 17,fontWeight: FontWeight.w600),),
                              Row(
                                children: [
                                  Text('Services required on ',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                                  Text('19/07/22',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w700),),
                                ],
                              ),
                              Text('Address - ..........................',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w700,fontSize: 12),),
                              Text('...........',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w700),),
                              Text('Services Required',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 17,fontWeight: FontWeight.w700),),
                              Row(
                                children: [
                                  CircleAvatar(radius: 2,backgroundColor: Color.fromRGBO(51, 0, 81, 1),),
                                  SizedBox(width: 3,),
                                  Text('Music vedio shoot',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              SizedBox(width: 5,),
                              Text("Contact No- 9999 9999999999",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
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
