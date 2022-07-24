import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  static const String id="Help";
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
              color: Color.fromRGBO(255, 255, 255, 0.23),
              elevation: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.1,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(51, 0, 81, 1),),),
                    Text('HELP AND SUPPORT',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20),),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.17,
              left: 10,
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.51,
                width: MediaQuery.of(context).size.width*0.95,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 0.23),
                  elevation: 50,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.92,
                    height: MediaQuery.of(context).size.height*0.45,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("FAQ's",style: TextStyle(color: Colors.black,fontSize: 18),),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.85,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Profile & approval status",style: TextStyle(color: Colors.black,fontSize: 18),),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.85,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Photo's vedio's and reviews",style: TextStyle(color: Colors.black,fontSize: 18),),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.85,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Customer leads & lead status",style: TextStyle(color: Colors.black,fontSize: 18),),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.85,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Payment and paid plans",style: TextStyle(color: Colors.black,fontSize: 18),),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.85,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Account Related",style: TextStyle(color: Colors.black,fontSize: 18),),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.85,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Other",style: TextStyle(color: Colors.black,fontSize: 18),),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
