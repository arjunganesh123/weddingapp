import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/Vendorreg.dart';

class VendorProf extends StatefulWidget {
  static const String id="VendorProf";
  const VendorProf({Key? key}) : super(key: key);

  @override
  State<VendorProf> createState() => _VendorProfState();
}

class _VendorProfState extends State<VendorProf> {
  List<String> prof=<String>["Bridal Designer","Bridal Makeup Artist","Choreographer","DJ","Honeymoon","Mehendi Artist","Wedding Caterer","Wedding Car","Wedding Decorator","Wedding Entertainment","Wedding Gifting","Wedding Invitations","Wedding Jewellery","Wedding Pandit","Wedding Photographer","Wedding Planner","Wedding Venue","Wedding Videographer"];
  List<Color> fillcolor=<Color>[Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(255, 255, 255, 1)];
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
              child: Image.asset('images/Common.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3,
                color: Colors.white,
              )),
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
                height: MediaQuery.of(context).size.height * 0.7,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: RawScrollbar(
                    radius: Radius.circular(20.0),
                    thumbColor: Colors.grey,
                    thumbVisibility: true,
                    thickness: 7,
                    child: ListView.builder(
                      padding: EdgeInsets.all(10),
                          itemBuilder: (context,counter){
                            return Padding(
                              padding: EdgeInsets.only(left: 12,bottom: 15),
                              child: Container(
                                height: 20,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          fillcolor[counter]=Color.fromRGBO(156, 85, 195, 1);
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.zero,
                                        primary: Colors.white,
                                        shape: const CircleBorder(
                                          side: BorderSide(color: Color.fromRGBO(200, 169, 222, 1),),
                                        ),
                                      ),
                                      child:CircleAvatar(
                                        radius: 9.0,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 5,backgroundColor: fillcolor[counter],
                                        ),
                                      ),),
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            fillcolor[counter]=Color.fromRGBO(156, 85, 195, 1);
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: Size.zero,
                                          padding: EdgeInsets.zero,
                                          primary: Colors.white,
                                        ),
                                        child: Text(prof[counter],style: TextStyle(color: Color.fromRGBO(156, 85, 195, 1),fontWeight: FontWeight.w500,fontSize: 17,letterSpacing: 0.5),)),
                                  ],
                                ),
                              ),
                            );
                          },
                      itemCount: prof.length,
                      ),
                  ),
                ),
                ),
              ),
          ),
          Positioned(
            top: 45,
            right: 20,
            child: Text(
              'CHOOSE YOUR PROFFESSION',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,letterSpacing: 0.5,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Navigator.pushNamed(context, Vendorreg.id);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF20072E),
                ),
                child: Center(
                    child: Text(
                      'PROCEED',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
