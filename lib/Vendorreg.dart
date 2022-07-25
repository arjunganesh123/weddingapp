import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/Payment1.dart';
import 'package:wedding_app/termsandcondition.dart';

class Vendorreg extends StatefulWidget {
  static const String id='Vendorreg';
  const Vendorreg({Key? key}) : super(key: key);

  @override
  State<Vendorreg> createState() => _VendorregState();
}

class _VendorregState extends State<Vendorreg> {
  bool obsuretext=true;
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
                height: MediaQuery.of(context).size.height*0.5,
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
                height: MediaQuery.of(context).size.height * 0.73,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 40, top: 30, right: 30, bottom: 15),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'YOUR NAME',
                          labelStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 2),
                          hintText: 'ENTER YOUR NAME',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),fontFamily: "Poppins",
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30, bottom: 15),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Your Business Name',
                          labelStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 2),
                          hintText: 'Enter Your Business Name',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),fontFamily: "Poppins",
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30,),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          labelStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 2),
                          hintText: 'Enter Your Login Email Address',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),fontFamily: "Poppins",
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30,),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        obscureText: obsuretext,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.bottomCenter,
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () {
                                setState(() {
                                  if(obsuretext==false){
                                    obsuretext=true;
                                  }
                                  else{
                                    obsuretext=false;
                                  }
                                });
                              },
                            ),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: 'Enter Password',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),fontFamily: "Poppins",
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30,),
                      child: TextField(
                        enableSuggestions: false,
                        enabled: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          labelText: 'City',
                          labelStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(top: 28),
                            child:Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 30,
                              ),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.only(top: 15),
                          hintText: 'Select City',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),
                              fontSize: 16),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 40,top: 15),
                        child: Text('Mobile Number',style: TextStyle(color: Colors.black, fontSize: 15,fontFamily: "Poppins"),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40,right: 30),
                      child: Row(
                        children: [
                          Text('91+  ',style: TextStyle(color: Colors.black,fontSize: 15),),
                          Expanded(
                            child: TextField(
                              enableSuggestions: false,
                              autocorrect: false,
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              autofocus: true,
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {},
                              decoration: InputDecoration.collapsed(
                                hintText: 'Enter Your Mobile',
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(200, 169, 222, 1),
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30, bottom: 10,top: 2),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30, bottom: 10,top: 5),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Business Location/Address',
                          labelStyle: TextStyle(color: Colors.black, fontSize: 20,fontFamily: "Poppins"),
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 5),
                          hintText: 'Enter House No./Name,Lname',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),fontFamily: "Poppins",
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 30, bottom: 10),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 5),
                          hintText: 'LandMark,Locality',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(200, 169, 222, 1),fontFamily: "Poppins",
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 40,top: 15),
                        child: Text("By signing up,you agree to VendorApp's",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: "Poppins"),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40,bottom: 5),
                      child: TextButton(onPressed: () { Navigator.pushNamed(context, Termsandcondition.id); },
                      child: Text("Terms & Conditions",style: TextStyle(color: Colors.blueAccent,fontSize: 13,fontFamily: "Poppins"),)),
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
              'CREATE YOUR ACCOUNT',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,letterSpacing: 0.5,
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
                Navigator.pushNamed(context, Payment1.id);
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
